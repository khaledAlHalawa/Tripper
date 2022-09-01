import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/theme_provider.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/tripper_elvated_button.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/splash_and_intro/wlcome_page.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/presentation/widgets/tripper_chip.dart';


class InterestingUserPage extends StatefulWidget {
  const InterestingUserPage._({Key? key}) : super(key: key);

  @override
  State<InterestingUserPage> createState() => _InterestingUserPageState();

  static Route get pageRoute => MaterialPageRoute(builder: (_) => const InterestingUserPage._());
}

class _InterestingUserPageState extends ThemeProvider<InterestingUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              padding: HWEdgeInsets.symmetric(horizontal: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      70.verticalSpace,
                      Align(
                        alignment: AlignmentDirectional.center,
                        child: SvgPictureView(TripperAssets.ksvLogoSecondary),
                      ),
                      34.verticalSpace,
                      ..._buildInterestingList(
                          title: LocaleKeys.intro_lbl_please_select_your_interests,
                          interests: ['مناطق سياحية', 'مناطق جبلية', 'مناطق أثرية', 'غابات', 'بحر'],
                          status: true),
                      30.verticalSpace,
                      ..._buildInterestingList(
                        title: LocaleKeys.intro_lbl_please_select_cities_interest,
                        interests: ['حلب', 'دمشق', 'حمص'],
                      ),
                      const Spacer(),
                      TripperElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(WelcomePage.pageRoute);
                        },
                        text: LocaleKeys.intro_lbl_continue,
                      ),
                      80.verticalSpace,
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildInterestingList({
    required String title,
    required List<String> interests,
    final bool? status,
  }) =>
      [
        TripperText(
          text: title,
          textStyle: textTheme.bodyText1?.copyWith(color: colorScheme.grey300),
        ),
        22.verticalSpace,
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: interests.map((e) => TripperChip(text: e, selected: status ?? false)).toList(),
        ),
      ];
}
