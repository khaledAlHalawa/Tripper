import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/features/app/presentation/widgets/fancy_shimmer_widget.dart';
import 'package:app/features/place/domain/entities/product.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/responsive_padding.dart';
import '../../../app/presentation/widgets/joined_list_widget.dart';
import '../../../app/presentation/widgets/tripper_text.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 248.w,
      height: 284.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded(
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10).r,
          //       image: DecorationImage(
          //         image: CachedNetworkImageProvider(widget.product.media?[0].originalUrl ?? ''),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     // child: Container(
          //     //   decoration: BoxDecoration(
          //     //     gradient: const LinearGradient(
          //     //         colors: [
          //     //           Colors.black26,
          //     //           Colors.transparent,
          //     //         ],
          //     //         begin: AlignmentDirectional.bottomCenter,
          //     //         end: AlignmentDirectional.topCenter,
          //     //         stops: [0.0, 0.8]),
          //     //     borderRadius: BorderRadius.circular(10).r,
          //     //   ),
          //     //   child: Padding(
          //     //     padding: const EdgeInsets.all(10).r,
          //     //     child: Column(
          //     //       children: [
          //     //         const Spacer(),
          //     //         Row(
          //     //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     //           children: [
          //     //             FavoriteButton(isFavorite: false),
          //     //             joinedList(context),
          //     //           ],
          //     //         ),
          //     //       ],
          //     //     ),
          //     //   ),
          //     // ),
          //   ),
          // ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10).r,
              child: TripperFancyImage(
                imageUrl: widget.product.media?[0].originalUrl ?? '',
                boxFit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: HWEdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TripperText(
                    text: widget.product.name ?? '',
                    textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Theme.of(context).colorScheme.grey300,
                        )),
                5.verticalSpace,
                LayoutBuilder(builder: (context, con) {
                  return Row(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 152.w),
                        child: TripperText(
                          text: widget.product.productType?.name ?? '',
                          textStyle: Theme.of(context).textTheme.bodyText2?.b.copyWith(
                                color: Theme.of(context).colorScheme.grey600.withOpacity(0.8),
                              ),
                          maxLines: 2,
                          textOverflow: TextOverflow.fade,
                        ),
                      ),
                      const Spacer(),
                      TripperText(
                          text: "${widget.product.price} S.P",
                          textStyle: Theme.of(context).textTheme.headline4?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              )),
                    ],
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget joinedList(BuildContext context) {
    return Row(
      children: [
        // Padding(
        //   padding: EdgeInsetsDirectional.only(end: 28.r),
        //   child: TripperText(
        //       text: "14+/24",
        //       textStyle: Theme.of(context).textTheme.caption?.copyWith(
        //             color: Theme.of(context).colorScheme.white,
        //           )),
        // ),
        const JoinedListWidget(imagesUrl: [],)
      ],
    );
  }
}
