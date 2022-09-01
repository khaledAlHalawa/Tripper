import 'package:app/config/theme/my_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    Key? key,
    required this.currentIndex,
    required this.count,
    this.size,
    this.dotColor,
    this.activeDotColor,
    this.onDotClicked,
    this.onEnd,
    this.textDirection,
    this.spacing,
    this.radius,
    this.curves = Curves.easeInOut,
    this.duration = const Duration(milliseconds: 300),
    this.axisDirection = Axis.horizontal,
  }) : super(key: key);

  final int currentIndex;
  final int count;
  final double? size;
  final Color? dotColor;
  final Color? activeDotColor;
  final ValueChanged<int>? onDotClicked;
  final Axis axisDirection;
  final VoidCallback? onEnd;
  final Curve curves;
  final Duration duration;
  final TextDirection? textDirection;
  final double? spacing;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: count,
      onDotClicked: onDotClicked,
      axisDirection: axisDirection,
      onEnd: onEnd,
      curve: curves,
      duration: duration,
      textDirection: textDirection,
      effect: ExpandingDotsEffect(
        strokeWidth: 1.0,
        activeDotColor: activeDotColor ?? Theme.of(context).colorScheme.white,
        dotColor: dotColor ?? Theme.of(context).colorScheme.white.withOpacity(0.6),
        spacing: spacing ?? 5.0,
        paintStyle: PaintingStyle.fill,
        radius: radius ?? 5,
        dotHeight: size ?? 5,
        dotWidth: size ?? 5,
      ),
    );
  }
}
