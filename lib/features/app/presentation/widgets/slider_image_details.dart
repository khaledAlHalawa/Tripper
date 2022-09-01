import 'package:app/features/app/presentation/pages/tripper_app.dart';
import 'package:app/features/app/presentation/widgets/favorite_button.dart';
import 'package:app/features/app/presentation/widgets/location_chips.dart';
import 'package:app/features/app/presentation/widgets/photo_viewer.dart';
import 'package:app/features/app/presentation/widgets/review_chips.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../city/domain/entities/city.dart';
import '../../../place/domain/entities/place.dart';
import '../../../profile/presentation/pages/edit_profile.dart';
import '../../../trip/domain/entities/trip.dart';
import 'back_details_button.dart';
import 'custom_smooth_indicator.dart';
import 'fancy_shimmer_widget.dart';

enum _DetailsType { city, trip, place }

class SliderImageDetails extends StatefulWidget {
  SliderImageDetails.city({
    Key? key,
    required this.images,
    required this.city,
  })  : height = 220.h,
        type = _DetailsType.city,
        super(key: key);

  SliderImageDetails.trip({
    Key? key,
    required this.images,
    required this.trip,
    required this.onFavoriteTrip,
  })  : height = 362.h,
        type = _DetailsType.trip,
        super(key: key);

  SliderImageDetails.place({
    Key? key,
    required this.images,
    required this.place,
    required this.onFavoritePlace,
  })  : height = 220.h,
        type = _DetailsType.place,
        super(key: key);

  double height;
  _DetailsType type;
  final List<String> images;
  City? city;
  Trip? trip;
  Place? place;
  VoidCallback? onFavoriteTrip;
  VoidCallback? onFavoritePlace;

  @override
  State<SliderImageDetails> createState() => _SliderImageDetailsState();
}

class _SliderImageDetailsState extends State<SliderImageDetails> {
  late CarouselController carouselController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    carouselController = CarouselController();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12).r,
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                disableCenter: true,
                autoPlay: widget.images.length > 1,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    if (!mounted) {
                      return;
                    }
                    setState(() => currentIndex = index);
                  });
                },
              ),
              carouselController: carouselController,
              items: widget.images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        TripperApp.navKey.currentState!.push(
                          AnimatedRoute(PhotoViewer(imageUrl: i)),
                        );
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: double.infinity,
                        child: TripperFancyImage(
                          imageUrl: i,
                          width: double.infinity,
                          height: double.infinity,
                          boxFit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            imageHeader(),
            if (widget.type == _DetailsType.city) cityChipsWidget(widget.city!),
            if (widget.type == _DetailsType.place) placeChipsWidget(widget.place!),
            if (widget.type == _DetailsType.trip) tripChipsWidget(widget.trip!),
          ],
        ),
      ),
    );
  }

  Widget imageIndicator() {
    return Padding(
      padding: HWEdgeInsetsDirectional.only(top: 22, end: 20),
      child: CustomIndicator(
        count: widget.images.length,
        currentIndex: currentIndex,
        onDotClicked: (index) => carouselController.animateToPage(index),
      ),
    );
  }

  Widget imageHeader() {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Row(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: HWEdgeInsetsDirectional.only(top: 10, start: 10),
              child: BackDetailsPageButton(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: imageIndicator(),
          ),
        ],
      ),
    );
  }

  Widget cityChipsWidget(City city) {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: Padding(
        padding: HWEdgeInsetsDirectional.only(bottom: 10, end: 10),
        child: LocationChips(location: 'سوريا, ${city.name ?? ''}'),
      ),
    );
  }

  Widget tripChipsWidget(Trip trip) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Padding(
        padding: HWEdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FavoriteButton(
              isFavorite: trip.isFavorite,
              onTap: widget.onFavoriteTrip,
            ),
            ReviewChips(review: (trip.review ?? 0).toDouble()),
          ],
        ),
      ),
    );
  }

  Widget placeChipsWidget(Place place) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Padding(
        padding: HWEdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FavoriteButton(
              isFavorite: place.isFavorite,
              onTap: widget.onFavoritePlace,
            ),
            Row(
              children: [
                LocationChips(location: '${place.country ?? ''}, ${place.city ?? ''}'),
                10.horizontalSpace,
                ReviewChips(review: (place.review ?? 0).toDouble()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
