import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterChips extends StatefulWidget {
  const FilterChips({
    Key? key,
    required this.title,
    this.onTap,
    this.value,
  }) : super(key: key);

  final String title;
  final ValueChanged<dynamic>? onTap;
  final dynamic value;
  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onTap?.call(widget.value);
      },
      borderRadius: BorderRadius.circular(7).r,
      child: FittedBox(
        child: Container(
          height: 35.h,
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.grey200,
                width: 1.4,
              ),
              borderRadius: BorderRadius.circular(7).r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              14.horizontalSpace,
              TripperText(
                  text: widget.title,
                  textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).colorScheme.grey,
                  )),
              8.horizontalSpace,
              Icon(Icons.cancel, color: Theme.of(context).colorScheme.grey, size: 18),
              10.horizontalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
