import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/responsive_padding.dart';

class TripperDropDownFilter<T> extends StatefulWidget {
  const TripperDropDownFilter({
    this.items,
    this.onChange,
    this.onSaved,
    this.onTap,
    this.validator,
    this.hint,
    this.menuMaxHeight,
    this.icon,
    this.focusNode,
    Key? key,
    this.value,
    this.flex = 1,
  }) : super(key: key);

  final ValueChanged? onChange;
  final FormFieldSetter? onSaved;
  final FormFieldValidator? validator;
  final VoidCallback? onTap;
  final List<T>? items;
  final String? hint;
  final double? menuMaxHeight;
  final Widget? icon;
  final FocusNode? focusNode;
  final T? value;
  final int flex;

  @override
  State<TripperDropDownFilter> createState() => _TripperDropDownFilterState();
}

class _TripperDropDownFilterState<T> extends State<TripperDropDownFilter> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: DropdownButtonFormField<T>(
        items: widget.items?.map((e) => DropdownMenuItem<T>(value: e, child: TripperText(text: e is String ? e : e.name, textStyle: null)))
            .toList(),
        onChanged: widget.onChange,
        onTap: widget.onTap,
        onSaved: widget.onSaved,
        validator: widget.validator,
        menuMaxHeight: widget.menuMaxHeight,
        icon: widget.icon,
        focusNode: widget.focusNode,
        value: widget.value,
        hint: widget.hint != null
            ? TripperText(text: widget.hint!, textStyle: textTheme.bodyText2?.copyWith(color: colorScheme.hint))
            : null,
        borderRadius: BorderRadius.circular(8).r,
        style: textTheme.bodyText2?.copyWith(color: colorScheme.onBackground),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12).r,
            borderSide: BorderSide(color: colorScheme.hint),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12).r,
            borderSide: BorderSide(color: colorScheme.hint),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12).r,
            borderSide: BorderSide(color: colorScheme.hint),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12).r,
            borderSide: BorderSide(color: colorScheme.error),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: HWEdgeInsetsDirectional.only(start: 12, end: 12),
        ),
      ),
    );
  }
}
