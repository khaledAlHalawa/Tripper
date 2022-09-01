import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class TripperFancyImage extends StatelessWidget {
  const TripperFancyImage({Key? key, required this.imageUrl, this.width, this.height, this.boxFit, this.boxDecoration}) : super(key: key);

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final BoxDecoration? boxDecoration;

  @override
  Widget build(BuildContext context) {
    return FancyShimmerImage(
      imageUrl: imageUrl,
      width: width ?? 300,
      height: height ?? 300,
      boxFit: boxFit ?? BoxFit.fill,
      boxDecoration: boxDecoration,
    );
  }
}
