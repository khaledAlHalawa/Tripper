import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TripperShimmerLoader extends StatelessWidget {
  final Widget child;
  final ShimmerDirection? shimmerDirection;
  final int? milliseconds;
  final Color? baseColor;
  final Color? highlightColor;

  const TripperShimmerLoader({
    Key? key,
    required this.child,
    this.shimmerDirection,
    this.milliseconds,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.grey,
      highlightColor: highlightColor ?? Colors.grey.shade50,
      direction: shimmerDirection ?? ShimmerDirection.ltr,
      period: Duration(milliseconds: milliseconds ?? 1500),
      enabled: true,
      child: child,
    );
  }
}
