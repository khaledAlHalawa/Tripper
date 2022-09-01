import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/responsive_padding.dart';

class AddItemFilter extends StatelessWidget {
  const AddItemFilter({
    Key? key,
    this.onTap,
    this.title,
    this.iconData,
    this.child,
    this.iconSize, this.padding,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String? title;
  final IconData? iconData;
  final Widget? child;
  final double? iconSize;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final widget = child ??
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TripperText(
              text: title ?? "",
              textStyle: theme.textTheme.bodyText1?.copyWith(color: theme.colorScheme.grey600),
            ),
            15.horizontalSpace,
            Icon(iconData ?? Icons.add, size: iconSize ?? 25, color: theme.colorScheme.grey600)
          ],
        );

    final paddingContainer = padding ?? HWEdgeInsets.symmetric(horizontal: 15, vertical: 5);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10).r,
      splashColor: theme.colorScheme.primary.withOpacity(0.4),
      overlayColor: MaterialStateProperty.all(theme.colorScheme.primary.withOpacity(0.1)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r,
          border: Border.all(color: theme.colorScheme.grey300),
        ),
        padding: paddingContainer,
        child: widget,
      ),
    );
  }
}
