import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/core/utils/extensions/num.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripperChip extends StatelessWidget {
  const TripperChip({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);

  final String text;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(11).r,
        border: selected ? Border.all(color: Theme.of(context).colorScheme.primary, width: 1.2) : null,
        boxShadow: selected ? null : [
          BoxShadow(
            color: Theme.of(context).brightness == Brightness.light
                ? Theme.of(context).colorScheme.grey100
                : Theme.of(context).colorScheme.grey600,
            blurRadius: 15,
            spreadRadius: 4,
          ),
        ],
      ),
      padding: HWEdgeInsets.symmetric(horizontal: 30, vertical: 14),
      duration: 300.milliseconds,
      child: TripperText(
        text: text,
        textStyle: Theme.of(context).textTheme.button!.r.copyWith(color: Theme.of(context).colorScheme.onBackground),
        translation: false,
        textAlign: TextAlign.center,
      ),
    );
  }
}
