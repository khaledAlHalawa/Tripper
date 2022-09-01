import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgSource {
  assets,
  network,
  string,
}

class SvgPictureView extends StatelessWidget {
  final String svgPath;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;
  final Function()? function;
  final AlignmentGeometry? alignment;
  final SvgSource? stateType;

  const SvgPictureView(this.svgPath,{
    Key? key,
    this.stateType = SvgSource.assets,
    this.alignment,
    this.width,
    this.height,
    this.function,
    this.fit,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: stateType == SvgSource.assets
          ? SvgPicture.asset(
              svgPath,
              width: width,
              height: height,
              color: color,
              alignment: alignment ?? Alignment.center,
              fit: fit ?? BoxFit.contain,
            )
          : stateType == SvgSource.network
              ? SvgPicture.network(
                  svgPath,
                  width: width,
                  height: height,
                  color: color,
                  alignment: alignment ?? Alignment.center,
                  fit: fit ?? BoxFit.contain,
                )
              : SvgPicture.string(
                  svgPath,
                  width: width,
                  height: height,
                  color: color,
                  alignment: alignment ?? Alignment.center,
                  fit: fit ?? BoxFit.contain,
                ),
    );
  }
}

extension AssetsPath on String {
  String get svg => 'assets/svg/$this.svg';
  String get png => 'assets/images/$this.png';
  String get jpg => 'assets/images/$this.jpg';
  String get jpeg => 'assets/images/$this.jpeg';
  String get flr => 'assets/animations/$this.flr';
  String get json => 'assets/animations/$this.animations';
}
