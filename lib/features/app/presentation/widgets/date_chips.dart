import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'image_view/svg_view.dart';

class DateChips extends StatelessWidget {
  const DateChips({
    Key? key,
    required this.assetIcon,
    required this.date,
  }) : super(key: key);

  final String assetIcon;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7).r),
      shadowColor: Theme.of(context).colorScheme.grey100,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(7).r,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2).r,
        child: Row(
          children: [
            TripperText(
                text: date,
                adaptiveColor: false,
                textStyle: Theme.of(context).textTheme.caption?.copyWith(
                      color: Theme.of(context).colorScheme.grey300,
                    )),
            SvgPictureView(assetIcon),
          ],
        ),
      ),
    );
  }
}
