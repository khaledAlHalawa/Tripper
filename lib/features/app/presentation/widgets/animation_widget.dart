import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimationScaleWidget extends StatelessWidget {
  const AnimationScaleWidget({
    Key? key,
    this.position = 0,
    this.horizontalOffset = 0,
    this.verticalOffset = 100,
    required this.child,
    this.milliseconds = 800,
  }) : super(key: key);

  AnimationScaleWidget.forButton({
    Key? key,
    required Widget child,
    AlignmentDirectional? alignment,
  })  : position = 2,
        milliseconds = 400,
        verticalOffset = 0,
        horizontalOffset = (alignment == AlignmentDirectional.centerStart ? -1 : 1) * 20,
        child = SafeArea(minimum: EdgeInsets.fromLTRB(16.0.w, 0.0.h, 10.0.w, 0.0.h), child: child),
        super(key: key);

  AnimationScaleWidget.forTitle({
    Key? key,
    required Widget child,
    AlignmentDirectional? alignment,
  })  : position = 2,
        milliseconds = 400,
        verticalOffset = 20,
        horizontalOffset = 0,
        child = SafeArea(minimum: EdgeInsets.fromLTRB(16.0.w, 0.0.h, 10.0.w, 0.0.h), child: child),
        super(key: key);

  final int position;
  final double horizontalOffset, verticalOffset;
  final Widget child;
  final int milliseconds;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: position,
      duration: Duration(milliseconds: milliseconds),
      child: SlideAnimation(
        horizontalOffset: horizontalOffset,
        verticalOffset: verticalOffset,
        child: FadeInAnimation(
          child: child,
        ),
      ),
    );
  }
}
