import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFilterItemChips extends StatefulWidget {
  const AddFilterItemChips({Key? key, required this.title, required this.onTap}) : super(key: key);

  final String title;
  final VoidCallback onTap;
  @override
  State<AddFilterItemChips> createState() => _AddFilterItemChipsState();
}

class _AddFilterItemChipsState extends State<AddFilterItemChips> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(7).r,
      child: Container(
        height: 35.h,
        width: 154.w,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.grey200,width: 1.4),
          borderRadius: BorderRadius.circular(7).r,
        ),
        // padding: HWEdgeInsetsDirectional.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Theme.of(context).colorScheme.grey, size: 24),
            14.horizontalSpace,
            TripperText(
                text: widget.title,
                textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).colorScheme.grey,
                    ))
          ],
        ),
      ),
    );
  }
}
