import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/presentation/widgets/google_maps_widget.dart';
import '../../../app/presentation/widgets/trip_path_widget.dart';
import '../../domain/entities/place_trip.dart';

class TripPathPage extends StatefulWidget {
  const TripPathPage({Key? key, required this.places}) : super(key: key);

  final List<PlaceTrip> places;
  @override
  State<TripPathPage> createState() => _TripPathPageState();
}

class _TripPathPageState extends State<TripPathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 24),
            sliver: SliverAppBar(
              flexibleSpace: Stack(
                children: [
                  GoogleMapsWidget(places: widget.places, mode: GoogleMapsMode.expand),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: GestureDetector(
                      onTap: ()=> Navigator.pop(context),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(7).r,
                        ),
                        padding: HWEdgeInsets.all(5),
                        margin: HWEdgeInsetsDirectional.only(top: 10, end: 10,start: 20),
                        child: Icon(Icons.arrow_back_rounded, color: Theme.of(context).colorScheme.grey600, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
              leading: Container(),
              elevation: 3,
              titleSpacing: 0,
              expandedHeight: 450.h,
              collapsedHeight: 320.h,
              toolbarHeight: 0,
              pinned: true,
              automaticallyImplyLeading: false,
            ),
          ),
          SliverAppBar(
            leading: Container(),
            elevation: 0,
            surfaceTintColor: Colors.white,
            title: Transform.translate(offset: const Offset(50, -5), child: const Text('مسار الرحلة')),
            expandedHeight: 25,
            toolbarHeight: 25,
            collapsedHeight: 25,
            pinned: true,
            automaticallyImplyLeading: false,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)).r,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)).r,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)).r,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    final place = widget.places[index];
                    bool isLastWidget = index == widget.places.length - 1;
                    return TripPathWidget(
                      index: index,
                      place: place,
                      isLastPlace: isLastWidget,
                    );
                  },
                  padding: HWEdgeInsets.symmetric(vertical: 20),
                  itemCount: widget.places.length,
                  shrinkWrap: true,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
