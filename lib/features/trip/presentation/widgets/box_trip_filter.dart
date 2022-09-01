import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/responsive_padding.dart';

class BoxTripFilter extends StatelessWidget {
  const BoxTripFilter({Key? key, this.margin, required this.child}) : super(key: key);

  final EdgeInsetsGeometry? margin;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12).r,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).brightness == Brightness.dark ? Colors.white10.withOpacity(0.05) : Colors.grey.shade100,
            spreadRadius: 5,
            blurRadius: 10,
          )
        ],
      ),
      padding: HWEdgeInsetsDirectional.only(end: 20, top: 15, start: 18, bottom: 20),
      margin: margin,
      child: child,
    );
  }
}
