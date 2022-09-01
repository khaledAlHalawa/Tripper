import 'package:app/features/app/presentation/pages/tripper_app.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/viewmodel/tripper_viewmodel.dart';
import 'package:app/features/app/presentation/widgets/tripper_elvated_button.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_button.dart';
import 'package:app/features/splash_and_intro/wlcome_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class TripperGuestWidget extends ConsumerWidget {
  const TripperGuestWidget({Key? key, this.isComment = false}) : super(key: key);

  final bool isComment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TripperViewModel tripperViewmodel = ref.watch(AppProvidersContainer.tripperViewmodelProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          isComment ? 'assets/images/review_animation.json' : 'assets/images/login_animation.json',
        height: 400.h
        ),
        TripperText(text: 'أهلاً بك', textStyle: Theme.of(context).textTheme.button),
        5.verticalSpace,
        TripperText(
          text: isComment
              ? 'لا يمكنك اضافة تعليق و تقييم المحتوى يجب تسجيل الدخول أولاً'
              : 'لا يمكنك عرض المحتوى يجب تسجيل الدخول إلى التطبيق أولاَ.',
          textStyle: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.center,
        ),
        20.verticalSpace,
        TripperTextButton(
          text: 'تسجيل الدخول',
          onPressed: () {
            TripperApp.navKey.currentState!.pushAndRemoveUntil(WelcomePage.pageRoute, (route) => false);
            tripperViewmodel.controller.jumpToTab(0);
            tripperViewmodel.changePage(0);
          },
          tripperButtonStyle: TripperButtonStyle.secondary,
        )
      ],
    );
  }
}
