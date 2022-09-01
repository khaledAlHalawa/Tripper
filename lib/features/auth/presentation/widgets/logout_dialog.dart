import 'dart:ui';

import 'package:app/common/constant/constant.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/tripper_elvated_button.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_button.dart';
import 'package:app/features/auth/presentation/manager/auth_viewmodel.dart';
import 'package:app/features/splash_and_intro/wlcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/responsive_padding.dart';
import '../../../app/presentation/widgets/tripper_loader.dart';

class LogoutDialog extends ConsumerWidget {
  LogoutDialog({Key? key}) : super(key: key);

  final AuthViewmodel viewmodel = GetIt.I<AuthViewmodel>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripperViewmodel = ref.watch(AppProvidersContainer.tripperViewmodelProvider);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10).r),
        insetPadding: HWEdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: HWEdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              30.verticalSpace,
              SvgPictureView(TripperAssets.ksvLogout),
              25.verticalSpace,
              TripperText(text: 'هل أنت متأكد من تسجيل الخروج؟', textStyle: Theme.of(context).textTheme.button),
              35.verticalSpace,
              Observer(builder: (context) {
                return viewmodel.isLoading
                    ? TripperLoader()
                    : Row(
                        children: [
                          TripperTextButton(
                            text: "تسجيل الخروج",
                            isLoading: viewmodel.isLoading,
                            onPressed: () {
                              viewmodel.logout(() {
                                Navigator.of(context).pushAndRemoveUntil(WelcomePage.pageRoute, (route) => false);
                                tripperViewmodel.controller.jumpToTab(0);
                                tripperViewmodel.changePage(0);
                              });
                            },
                            tripperButtonStyle: TripperButtonStyle.primary,
                          ),
                          25.horizontalSpace,
                          TripperTextButton(
                            text: "إلغاء",
                            isLoading: viewmodel.isLoading,
                            onDisabled: () {},
                            onPressed: () => Navigator.pop(context),
                            tripperButtonStyle: TripperButtonStyle.secondary,
                          ),
                        ],
                      );
              }),
              25.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
