import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageView extends StatelessWidget {
  final String url;
  final Function()? function;
  final BoxFit? boxFit;
  final Widget errorWidget;
  final Widget? placeHolder;
  final double? width;
  final double? height;

  const CachedNetworkImageView({
    Key? key,
    required this.url,
    this.function,
    this.boxFit,
    this.errorWidget = const SizedBox(),
    this.width,
    this.height,
    this.placeHolder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: boxFit ?? BoxFit.cover,
        width: width,
        height: height,
        placeholder: (context, imageUrl) => Center(
          child: placeHolder ?? const SizedBox(),
        ),
        errorWidget: (context, imageUrl, error) => errorWidget,
      ),
    );
  }
}
