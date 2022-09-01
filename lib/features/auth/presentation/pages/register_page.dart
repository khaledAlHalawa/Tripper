import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/core/utils/form_utils.dart';
import 'package:app/core/utils/validator.dart' hide RequiredValidator;
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_dropdown_menu.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_button.dart';
import 'package:app/features/auth/domain/use_cases/register_by_email_usecase.dart';
import 'package:app/features/auth/presentation/manager/auth_viewmodel.dart';
import 'package:app/features/auth/presentation/pages/login_page.dart';
import 'package:app/features/city/domain/entities/city.dart';
import 'package:app/features/city/presentation/manager/city_viewmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get_it/get_it.dart';
import '../../../../common/constant/design/assets_provider.dart';
import '../../../../common/constant/design/constant_design.dart';
import '../../../../core/utils/form_state_mixin.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../app/presentation/pages/base_page.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/presentation/viewmodel/app_providers.dart';
import '../../../app/presentation/widgets/image_view/svg_view.dart';
import '../../../app/presentation/widgets/tripper_elvated_button.dart';
import '../../../app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import '../../../place/domain/use_cases/get_places_usecase.dart';
import '../../../place/presentation/manager/place_viewmodel.dart';
import '../../../trip/domain/use_cases/get_trips_usecase.dart';
import '../../../trip/presentation/manager/trip_viewmodel.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage._({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();

  static Future<dynamic> here(
    BuildContext context,
    bool replacement,
  ) =>
      replacement ? Navigator.of(context).pushReplacement(pageRoute) : Navigator.of(context).push(pageRoute);

  static Route get pageRoute => MaterialPageRoute(builder: (_) => const RegisterPage._());
}

class _RegisterPageState extends ConsumerState<RegisterPage> with FormStateMinxin {
  late CityViewModel cityViewModel;
  AuthViewmodel viewmodel = GetIt.I<AuthViewmodel>();
  String? gender;
  int? cityId;

  @override
  initState() {
    super.initState();
    cityViewModel = GetIt.I<CityViewModel>();
    cityViewModel.fetchCities();
  }

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
      child: SingleChildScrollView(
        padding: HWEdgeInsets.symmetric(horizontal: kpPage),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Padding(
                  padding: HWEdgeInsetsDirectional.only(top: 0),
                  child: TripperTextButton(
                    text: LocaleKeys.auth_lbl_skip,
                    tripperButtonStyle: TripperButtonStyle.secondary,
                    onPressed: () {
                      refreshHome();
                      BasePage.here(context);
                    },
                  ),
                ),
              ),
              28.verticalSpace,
              // TripperImageComponent(
              //   imageUrl: "",
              //   mode: ImageComponentMode.picker,
              //   onTap: () {},
              // ),
              // 28.verticalSpace,
              TripperTextField(
                inputDecorationType: InputDecorationType.outline,
                decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_firstname),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                controller: form.controllers[0],
                validator: (value) => minValidator().call(value),
                focusNode: form.nodes[0],
                onFieldSubmitted: (text) => focusNext(form.nodes[1], text),
              ),
              20.verticalSpace,
              TripperTextField(
                inputDecorationType: InputDecorationType.outline,
                decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_lastname),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                controller: form.controllers[1],
                validator: (value) => minValidator().call(value),
                focusNode: form.nodes[1],
                onFieldSubmitted: (text) => focusNext(form.nodes[2], text),
              ),
              20.verticalSpace,
              TripperTextField(
                inputDecorationType: InputDecorationType.outline,
                decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_email),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                controller: form.controllers[2],
                validator: emailValidator(),
                focusNode: form.nodes[2],
                onFieldSubmitted: (text) => focusNext(form.nodes[3], text),
              ),
              20.verticalSpace,
              TripperTextField(
                inputDecorationType: InputDecorationType.outlinePassword,
                decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_password),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                controller: form.controllers[3],
                validator: (value) => passwordValidator().call(value),
                focusNode: form.nodes[3],
                onFieldSubmitted: (text) => focusNext(form.nodes[4], text),
              ),
              20.verticalSpace,
              TripperTextField(
                inputDecorationType: InputDecorationType.outlinePassword,
                decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_confirm_password),
                maxLines: 1,
                controller: form.controllers[4],
                textInputAction: TextInputAction.next,
                validator: (value) => passwordValidator().call(value),
                focusNode: form.nodes[4],
                onFieldSubmitted: (text) => focusNext(form.nodes[5], text),
              ),
              20.verticalSpace,
              citiesWidget(),
              20.verticalSpace,
              TripperDropDownMenu<String>(
                items: const ['ذكر', 'أنثى'],
                hint: LocaleKeys.auth_lbl_gender,
                onChange: (value) {},
                onSaved: (value) {
                  gender = value == 'ذكر' ? "male" : "female";
                },
                validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
                focusNode: form.nodes[6],
              ),
              50.verticalSpace,
              const Spacer(),
              Observer(builder: (context) {
                return TripperElevatedButton(
                  text: LocaleKeys.auth_lbl_register,
                  isLoading: viewmodel.isLoading,
                  onPressed: () => form.validate(_onRegister),
                );
              }),
              23.verticalSpace,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: LocaleKeys.auth_lbl_have_not_account.tr(), style: textTheme.bodyText2),
                    TextSpan(
                      text: LocaleKeys.welcome_lbl_login.tr(),
                      style: textTheme.bodyText2
                          ?.copyWith(color: colorScheme.primary, decoration: TextDecoration.underline)
                          .b,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          LoginPage.here(context, true);
                        },
                    ),
                  ],
                ),
              ),
              70.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Widget backLayer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Spacer(),
        Align(alignment: AlignmentDirectional.topStart, child: SvgPictureView(TripperAssets.ksvLoginPath1)),
        const Spacer(),
        Align(alignment: AlignmentDirectional.bottomStart, child: SvgPictureView(TripperAssets.ksvLoginPath3)),
      ],
    );
  }

  @override
  int get numberOfFields => 7;

  focusNext(FocusNode node, String text) {
    if (text.trim() == '') {
      return;
    }
    node.requestFocus();
  }

  _onRegister() {
    final param = RegisterByEmailParams(
      email: form.controllers[2].text,
      password: form.controllers[3].text,
      passwordConfirmation: form.controllers[4].text,
      firstname: form.controllers[0].text,
      lastname: form.controllers[1].text,
      gender: gender!,
      cityId: cityId!,
    );

    viewmodel.registerByEmail(
      param,
      () {
        refreshHome();
        BasePage.here(context);
      },
    );
  }

  refreshHome(){
    ref.read<CityViewModel>(AppProvidersContainer.cityProvider).fetchCities();
    ref.read<PlaceViewmodel>(AppProvidersContainer.placeProvider).fetchPlaces(GetPlacesParams(), 1);
    ref.read<TripViewmodel>(AppProvidersContainer.tripProvider).fetchTrips(GetTripsParams());
  }

  Widget citiesWidget() {
    return Observer(
      builder: (context) {
        return MobxFutureBuilder<List<City>?>(
          future: cityViewModel.citiesFuture,
          onSuccess: (res) => TripperDropDownMenu<City>(
            items: res?.map((e) => e).toList() ?? [],
            hint: LocaleKeys.auth_lbl_city,
            onChange: (value) {},
            onSaved: (value) {
              cityId = (value as City).id;
            },
            validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value?.name ?? ''),
          ),
          onError: (res) {
            return TripperDropDownMenu(
              hint: LocaleKeys.auth_lbl_city,
              focusNode: form.nodes[5],
              icon: GestureDetector(
                onTap: cityViewModel.fetchCities,
                child:
                    SizedBox(height: 30, width: 25, child: Icon(Icons.refresh, color: colorScheme.grey300, size: 18)),
              ),
              validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
            );
          },
          onLoading: () => TripperDropDownMenu<String>(
            hint: LocaleKeys.auth_lbl_city,
            icon: TripperLoader(size: 18),
            validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
          ),
        );
      },
    );
  }
}
