import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripperHashtagWidget extends StatelessWidget {
  const TripperHashtagWidget({
    Key? key,
    required this.hashTag,
  }) : super(key: key);

 final String hashTag;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 100.w, maxHeight: 30.h),
      alignment: AlignmentDirectional.center,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7).r,
          color: Theme.of(context).colorScheme.background,
          boxShadow: [
            BoxShadow(color: Theme.of(context).colorScheme.grey100, blurRadius: 5),
          ]),
      child: TripperText(
        text: '#$hashTag',
        textStyle: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.grey300),
      ),
    );
  }
}
