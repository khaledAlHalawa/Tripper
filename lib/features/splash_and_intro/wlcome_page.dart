import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/auth/presentation/pages/login_page.dart';
import 'package:app/features/auth/presentation/pages/register_page.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/presentation/pages/base_page.dart';
import '../app/presentation/widgets/tripper_elvated_button.dart';
import '../app/presentation/widgets/tripper_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage._({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();

  static Route get pageRoute => MaterialPageRoute(builder: (_) => const WelcomePage._());
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            padding: HWEdgeInsetsDirectional.only(start: kpPage, end: kpPage),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(minHeight: 425.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10).r,
                            image:
                                DecorationImage(image: AssetImage(TripperAssets.kpnWelcomeTripper), fit: BoxFit.fill)),
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Padding(
                            padding: HWEdgeInsetsDirectional.only(end: 10, top: 10),
                            child: TripperElevatedButton(
                              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.grey100),
                                  minimumSize: MaterialStateProperty.all(Size(80.r, 40.r))),
                              child: TripperText(
                                text: LocaleKeys.welcome_lbl_skip,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(color: Theme.of(context).colorScheme.grey600),
                                adaptiveColor: false,
                              ),
                              onPressed: () => BasePage.here(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    25.verticalSpace,
                    TripperText(
                      text: LocaleKeys.welcome_lbl_hi,
                      textStyle: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                    12.verticalSpace,
                    TripperText(
                      text: 'تطبيق Tripper عبارة عن منصة الكترونية للخدمات السياحية تهتم بالسياح الراغبين بزيارة الجمهورية العربية السورية و بالسياح الدخلين بين المحافظات للتعرف على أهم الاماكن السياحية والانضمام للرحلات السياحية والتمتع بقضاء وقت ممتع مع الآخرين.',
                      textStyle: Theme.of(context).textTheme.caption?.copyWith(
                            color: Theme.of(context).textTheme.caption?.color?.withOpacity(0.8),
                          ),
                    ),
                    25.verticalSpace,
                    TripperElevatedButton(
                      text: LocaleKeys.welcome_lbl_login,
                      onPressed: () => LoginPage.here(context, false),
                    ),
                    20.verticalSpace,
                    TripperElevatedButton(
                      text: LocaleKeys.welcome_lbl_register,
                      onPressed: () {
                        RegisterPage.here(context, false);
                      },
                      tripperButtonStyle: TripperButtonStyle.secondary,
                    ),
                    23.verticalSpace,
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'هل تود تصفح التطبيق؟', style: textTheme.bodyText2),
                        TextSpan(
                          text: 'الدخول كزائر',
                          style: textTheme.bodyText2
                              ?.copyWith(color: colorScheme.primary, decoration: TextDecoration.underline)
                              .b,
                          recognizer: TapGestureRecognizer()..onTap = () => BasePage.here(context),
                        ),
                      ]),
                    ),
                    40.verticalSpace,
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
