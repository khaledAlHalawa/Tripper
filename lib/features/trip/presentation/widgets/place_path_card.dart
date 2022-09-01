import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/fancy_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/presentation/widgets/tripper_text.dart';
import '../../domain/entities/place_trip.dart';

class PlacePathCard extends StatelessWidget {
  const PlacePathCard({Key? key, required this.place, this.onClose}) : super(key: key);

  final PlaceTrip place;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: HWEdgeInsetsDirectional.only(top: 30, end: 20, start: 20, bottom: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(15).r,
        boxShadow: [
          BoxShadow(
            color:Theme.of(context).brightness == Brightness.dark ? Theme.of(context).colorScheme.grey600 : Colors.grey.shade100,
            blurRadius: 15,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15).r,
                child: TripperFancyImage(
                  imageUrl: place.media?[0].originalUrl ?? '',
                  height: 212.h,
                  width: double.infinity,
                  boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15).r,
                  ),
                ),
              ),
              20.verticalSpace,
              Padding(
                padding: HWEdgeInsetsDirectional.only(start: 20, end: 20),
                child: TripperText(
                    text: place.name ?? '',
                    textStyle: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    )),
              ),
              20.verticalSpace,
              Padding(
                padding: HWEdgeInsets.symmetric(horizontal: 20),
                child: TripperText(
                  text: place.description ?? '',
                  textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).colorScheme.grey600.withOpacity(0.8),
                      ),
                  maxLines: 4,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              20.verticalSpace,
            ],
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: GestureDetector(
              onTap: onClose,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(7).r,
                ),
                padding: HWEdgeInsets.all(5),
                margin: HWEdgeInsetsDirectional.only(top: 10, end: 10),
                child: Icon(Icons.close, color: Theme.of(context).colorScheme.grey600, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
