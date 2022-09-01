import 'package:app/features/city/domain/entities/city.dart';
import 'package:app/features/place/domain/entities/place.dart';
import 'package:flutter/material.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/city/presentation/pages/city_details_screen.dart';
import 'package:app/features/place/presentation/widgets/place_card.dart';
import 'package:app/features/trip/presentation/widgets/trip_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/constant/design/assets_provider.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/widgets/image_view/svg_view.dart';
import '../../../app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import '../../../city/presentation/pages/most_famous_cities_screen.dart';
import '../../../city/presentation/widgets/city_card.dart';
import '../../../home/presentation/widgets/title_home_section.dart';
import '../../../place/presentation/pages/most_famous_places_screen.dart';
import '../../../place/presentation/pages/place_details_screen.dart';
import '../../../trip/domain/entities/trip.dart';
import '../../../trip/presentation/pages/all_next_trip.dart';
import '../../../trip/presentation/pages/trip_details_screen.dart';
import 'filter_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: HWEdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            child: TripperTextField(
              inputDecorationType: InputDecorationType.normal,
              controller: TextEditingController(),
              decorationParam: InputDecorationParam(
                hintText: "ابحث عن...",
                // icon: Icon(Icons.search),
                contentPadding: HWEdgeInsetsDirectional.only(top: 18, end: 10),
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    22.horizontalSpace,
                    const Icon(Icons.search),
                    Container(
                      width: 1,
                      margin: HWEdgeInsets.symmetric(vertical: 14, horizontal: 7),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.grey200.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5)),

                      // height: double.infinity,
                    ),
                  ],
                ),
                suffixIcon: InkWell(
                    onTap: () {
                      TripperApp.navKey.currentState!.push(MaterialPageRoute(builder: (_) => const FilterPage()));
                    },
                    borderRadius: BorderRadius.circular(20).r,
                    child: SizedBox(
                        width: 50.w,
                        child: Padding(
                          padding: HWEdgeInsetsDirectional.only(end: 15),
                          child: SvgPictureView(
                            TripperAssets.ksvFilter,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                          ),
                        ))),
                isDense: false,
              ),
              maxLines: 1,
            ),
          ),
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: TitleHomeSection(
                    title: "المدن",
                    onShowAll: () {
                      TripperApp.navKey.currentState!
                          .push(MaterialPageRoute(builder: (_) => const MostFamousCitiesScreen(cities: [])));
                    },
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: 150.0.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        itemCount: 3,
                        separatorBuilder: (_, __) => SizedBox(width: 10.w),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              TripperApp.navKey.currentState!.push(MaterialPageRoute(
                                  builder: (_) => const CityDetailsScreen(
                                        city: City(),
                                      )));
                            },
                            child: const CityCard(city: null),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: TitleHomeSection(
                      title: "الرحلات القادمة",
                      onShowAll: () {
                        TripperApp.navKey.currentState!
                            .push(MaterialPageRoute(builder: (_) => const AllNextTripScreen()));
                      }),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: 265.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        itemCount: 3,
                        separatorBuilder: (_, __) => SizedBox(width: 10.w),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                TripperApp.navKey.currentState!
                                    .push(MaterialPageRoute(builder: (_) => const TripDetailsScreens(trip: Trip())));
                              },
                              child: TripCard(trip: Trip()));
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: TitleHomeSection(
                      title: "الأماكن",
                      onShowAll: () {
                        TripperApp.navKey.currentState!
                            .push(MaterialPageRoute(builder: (_) => const MostFamousPlacesScreen()));
                      }),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 20.h, left: 20.w, right: 20.w),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: GestureDetector(
                              onTap: () {
                                TripperApp.navKey.currentState!
                                    .push(MaterialPageRoute(builder: (_) => PlaceDetailsScreen(place: Place())));
                              },
                              child: PlaceCard(place: Place(),)),
                        );
                      },
                      childCount: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
