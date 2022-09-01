import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/core/utils/form_utils.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/core/utils/validator.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/tripper_elvated_button.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_button.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import 'package:app/features/auth/domain/use_cases/login_by_email_usecase.dart';
import 'package:app/features/auth/presentation/manager/auth_viewmodel.dart';
import 'package:app/features/auth/presentation/pages/register_page.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/form_state_mixin.dart';
import '../../../app/presentation/pages/base_page.dart';
import '../../../app/presentation/viewmodel/app_providers.dart';
import '../../../city/presentation/manager/city_viewmodel.dart';
import '../../../place/domain/use_cases/get_places_usecase.dart';
import '../../../place/presentation/manager/place_viewmodel.dart';
import '../../../trip/domain/use_cases/get_trips_usecase.dart';
import '../../../trip/presentation/manager/trip_viewmodel.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage._({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();

  static Future<dynamic> here(
    BuildContext context,
    bool replacement,
  ) =>
      replacement ? Navigator.of(context).pushReplacement(pageRoute) : Navigator.of(context).push(pageRoute);

  static Route get pageRoute => MaterialPageRoute(builder: (_) => const LoginPage._());
}

class _LoginPageState extends ConsumerState<LoginPage> with FormStateMinxin {
  AuthViewmodel viewmodel = GetIt.I<AuthViewmodel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            backLayer(),
            frontLayer(),
          ],
        ),
      ),
    );
  }

  Widget frontLayer() {
    return Form(
      key: form.key,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: HWEdgeInsets.symmetric(horizontal: kpPage),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Padding(
                padding: HWEdgeInsetsDirectional.only(top: 23),
                child: TripperTextButton(
                  text: LocaleKeys.auth_lbl_skip,
                  tripperButtonStyle: TripperButtonStyle.secondary,
                  onPressed: () {
                    BasePage.here(context);
                    refreshHome();
                  },
                ),
              ),
            ),
            52.verticalSpace,
            SvgPictureView(TripperAssets.ksvLogoPrimary),
            8.verticalSpace,
            TripperText(
              text: LocaleKeys.auth_msg_travel_with_people,
              textStyle: textTheme.caption?.copyWith(color: colorScheme.primary),
            ),
            66.verticalSpace,
            TripperTextField(
              controller: form.controllers[0],
              inputDecorationType: InputDecorationType.outline,
              decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_email),
              maxLines: 1,
              textInputAction: TextInputAction.next,
              validator: emailValidator(),
              focusNode: form.nodes[0],
              onFieldSubmitted: (text) => focusNext(form.nodes[1], text),
            ),
            25.verticalSpace,
            TripperTextField(
              controller: form.controllers[1],
              inputDecorationType: InputDecorationType.outlinePassword,
              decorationParam: InputDecorationParam(
                hintText: LocaleKeys.auth_lbl_password,
              ),
              maxLines: 1,
              textInputAction: TextInputAction.send,
              validator: (value) => passwordValidator().call(value),
              focusNode: form.nodes[1],
              onFieldSubmitted: (text) => text.trim() != '' ? _onLoginAction() : null,
            ),
            const Spacer(),
            40.verticalSpace,
            Observer(
              builder: (context) {
                return TripperElevatedButton(
                  text: LocaleKeys.welcome_lbl_login,
                  isLoading: viewmodel.isLoading,
                  onPressed: _onLoginAction,
                );
              },
            ),
            23.verticalSpace,
            RichText(
              text: TextSpan(children: [
                TextSpan(text: LocaleKeys.auth_lbl_have_not_account.tr(), style: textTheme.bodyText2),
                TextSpan(
                  text: LocaleKeys.auth_lbl_register.tr(),
                  style: textTheme.bodyText2
                      ?.copyWith(color: colorScheme.primary, decoration: TextDecoration.underline)
                      .b,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      RegisterPage.here(context, true);
                    },
                ),
              ]),
            ),
            70.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget backLayer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Spacer(),
        Align(alignment: AlignmentDirectional.topEnd, child: SvgPictureView(TripperAssets.ksvLoginPath4)),
        const Spacer(),
        Align(alignment: AlignmentDirectional.bottomEnd, child: SvgPictureView(TripperAssets.ksvLoginPath2)),
      ],
    );
  }

  @override
  int get numberOfFields => 2;

  _onLoginAction() {
    form.validate(() => viewmodel.loginByEmail(
          LoginByEmailParams(form.controllers[0].text, form.controllers[1].text),
          () {
            refreshHome();
            BasePage.here(context);
          },
        ));
  }

  refreshHome(){
    ref.read<CityViewModel>(AppProvidersContainer.cityProvider).fetchCities();
    ref.read<PlaceViewmodel>(AppProvidersContainer.placeProvider).fetchPlaces(GetPlacesParams(), 1);
    ref.read<TripViewmodel>(AppProvidersContainer.tripProvider).fetchTrips(GetTripsParams());
  }

  focusNext(FocusNode node, String text) {
    if (text.trim() == '') {
      return;
    }
    node.requestFocus();
  }
}
