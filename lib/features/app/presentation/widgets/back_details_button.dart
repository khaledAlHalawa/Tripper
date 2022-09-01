import 'package:app/config/theme/my_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackDetailsPageButton extends StatelessWidget {
  const BackDetailsPageButton({Key? key, this.onTap}) : super(key: key);

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(7).r,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7).r,
            color: Theme.of(context).colorScheme.white.withOpacity(0.8),
          ),
          height: 28.h,
          width: 28.w,
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: Icon(
            CupertinoIcons.arrow_right,
            size: 18,
            color: Theme.of(context).colorScheme.grey600,
          )),
    );
  }
}
