import 'package:flutter/material.dart';
import 'package:app/common/constant/constant.dart';
import 'package:app/core/utils/extensions/build_context.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.color,
    this.dimension,
  }) : super(key: key);

  final Color? color;
  final double? dimension;
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension ?? kr16,
      child: CircularProgressIndicator(
        backgroundColor: color ?? context.theme.colorScheme.primary.withOpacity(0.5),
        strokeWidth: 1.8,
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.white70),
      ),
    );
  }
}
