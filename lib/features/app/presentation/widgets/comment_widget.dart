import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/responsive_padding.dart';
import '../../../place/domain/entities/review.dart';
import 'image_view/cached_network_image.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key, required this.review}) : super(key: key);

  final Review review;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HWEdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _image(context),
                    10.horizontalSpace,
                    Expanded(
                      child: Padding(
                        padding: HWEdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TripperText(
                              text: '${review.user?.firstName ?? ''} ${review.user?.lastName ?? ''}',
                              textStyle: Theme.of(context).textTheme.bodyText2?.b.copyWith(
                                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                              ),
                            ),
                            5.verticalSpace,
                            TripperText(
                              text: review.comment ?? '',
                              textStyle: Theme.of(context).textTheme.caption?.copyWith(
                                color: Theme.of(context).colorScheme.grey300,
                              ),
                              maxLines: 3,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: HWEdgeInsetsDirectional.only(top: 2,start: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TripperText(
                      text: (review.review ?? 0).toString(),
                      textStyle: Theme.of(context).textTheme.caption?.copyWith(
                            color: Theme.of(context).colorScheme.grey300,
                          ),
                    ),
                    2.horizontalSpace,
                    Icon(
                      Icons.star_rate_rounded,
                      color: Theme.of(context).colorScheme.yellow,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _image(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(90),
      child: CachedNetworkImageView(
        url: review.user?.link ?? '',
        height: 40.r,width: 40.r,
        boxFit: BoxFit.fill,
        errorWidget: Image.asset('avater-placeholder'.png),
        placeHolder: Image.asset('avater-placeholder'.png),

      ),
    );
  }
}
