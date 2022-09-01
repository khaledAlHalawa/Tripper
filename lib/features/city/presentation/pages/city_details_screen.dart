import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/data/models/favorite_relation.dart';
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/slider_image_details.dart';
import 'package:app/features/app/presentation/widgets/tripper_empty_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_error_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/city/domain/entities/city.dart';
import 'package:app/features/place/domain/entities/place_type.dart';
import 'package:app/features/place/presentation/manager/place_viewmodel.dart';
import 'package:app/features/place/presentation/widgets/place_card.dart';
import 'package:app/features/trip/domain/use_cases/get_trips_usecase.dart';
import 'package:app/features/trip/presentation/manager/trip_viewmodel.dart';
import 'package:app/features/trip/presentation/pages/trip_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mobx/mobx.dart' as mobx;

import '../../../../common/constant/configuration/global.dart';
import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/viewmodel/app_providers.dart';
import '../../../app/presentation/widgets/tripper_text.dart';
import '../../../home/presentation/widgets/title_home_section.dart';
import '../../../place/domain/entities/place.dart';
import '../../../place/domain/use_cases/get_places_usecase.dart';
import '../../../place/presentation/pages/place_details_screen.dart';
import '../../../trip/domain/entities/trip.dart';
import '../../../trip/presentation/widgets/trip_card.dart';

class CityDetailsScreen extends ConsumerStatefulWidget {
  const CityDetailsScreen({Key? key, required this.city}) : super(key: key);

  final City city;
  @override
  ConsumerState<CityDetailsScreen> createState() => _CityDetailsScreenState();
}

class _CityDetailsScreenState extends ConsumerState<CityDetailsScreen> {
  late ValueNotifier<int> _tabNotifier;
  final placeViewmodel = GetIt.I<PlaceViewmodel>();
  final TripViewmodel tripViewmodel = GetIt.I<TripViewmodel>();
  List<PlaceType> placesTypeList = [];
  late mobx.ReactionDisposer paginationReaction;
  late mobx.ReactionDisposer placesTypeReaction;

  @override
  void initState() {
    super.initState();
    _tabNotifier = ValueNotifier(0);
    fetchTrips();
    placeViewmodel.fetchPlacesType();

    placesTypeReaction = mobx.reaction<List<PlaceType>?>((_) => placeViewmodel.placesType, (placesType) async {
      if (placesType == null || placesType.isEmpty) {
        return;
      }
      placesTypeList = placesType;
      placeViewmodel.changeStatusPagination();
    });

    paginationReaction = mobx.reaction((p0) => placeViewmodel.refreshListPagination, (p0) {
      placesTypeList[_tabNotifier.value].pagingController!.addPageRequestListener((pageKey) {
        _fetchAndHandlePaginationPlaces(pageKey, placesTypeList[_tabNotifier.value].id!);
      });
    });
  }

  @override
  dispose() {
    super.dispose();
    for (var element in placesTypeList) {
      element.pagingController?.dispose();
    }
    paginationReaction.reaction.dispose();
    placesTypeReaction.reaction.dispose();
  }

  _fetchAndHandlePaginationPlaces(int pageKey, String placeTypeID) {
    placeViewmodel.fetchPlaces(
      GetPlacesParams(filterPlaceTypeIds: [placeTypeID], page: pageKey.toString()), pageKey,
      onGetPlaces: (places) {
        try {
          final isLastPage = places.length < perPageSize;

          if (isLastPage) {
            placesTypeList[_tabNotifier.value].pagingController!.appendLastPage(places);
          } else {
            final nextPageKey = ++pageKey;
            placesTypeList[_tabNotifier.value].pagingController!.appendPage(places, nextPageKey);
          }
        } catch (error) {
          placesTypeList[_tabNotifier.value].pagingController!.error = error;
        }
      },
      // index: tabIndex,
    );
  }

  fetchTrips() {
    tripViewmodel.fetchTrips(GetTripsParams(filterCityIds: [city.id!.toString()]));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 12),
            child: SliderImageDetails.city(
              images: city.medias?.map((e) => e.originalUrl ?? '').toList() ?? [],
              city: city,
            ),
          ),
          Padding(
            padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 5),
            child: TripperText(
                text: city.name ?? "",
                textStyle: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    )),
          ),
          Padding(
            padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 20),
            child: TripperText(
              text: city.description ?? "",
              textStyle: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
              maxLines: 3,
            ),
          ),
          Observer(
            builder: (context) {
              return DefaultTabController(
                length: placeViewmodel.placesType?.length ?? 0,
                child: Expanded(
                  child: NestedScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    headerSliverBuilder: (context, innerBoxScrolled) {
                      return [
                        SliverToBoxAdapter(
                          child: TitleHomeSection(
                              title: 'الرحلات ضمن مدينة ${city.name ?? ''}',
                              onShowAll: () {},
                              lengthList: tripViewmodel.trips?.length),
                        ),
                        SliverToBoxAdapter(child: 10.verticalSpace),
                        SliverToBoxAdapter(
                          child: MobxFutureBuilder<List<Trip>?>(
                            future: tripViewmodel.tripsFuture,
                            onLoading: () => TripperLoader(
                              key: UniqueKey(),
                            ),
                            onError: (err) => TripperErrorState(
                              error: err,
                              onRetry: () {
                                fetchTrips();
                              },
                            ),
                            onSuccess: (trips) => (trips?.length ?? 0) != 0
                                ? SizedBox(
                                    key: UniqueKey(),
                                    height: 265.h,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      padding: HWEdgeInsets.only(right: 20, left: 20, top: 10, bottom: 20),
                                      itemCount: trips?.take(3).length ?? 0,
                                      separatorBuilder: (_, __) => 10.horizontalSpace,
                                      itemBuilder: (context, index) {
                                        Trip trip = trips![index];
                                        return Observer(
                                          builder: (context) {
                                            final isFavorite = tripViewmodel.tripsFuture.value
                                                ?.singleWhere((element) => element.id == trip.id)
                                                .isFavorite;

                                            trip = isFavorite == true
                                                ? trip.copyWith(favoritesRelation: [const FavoriteRelation()])
                                                : trip.copyWith(favoritesRelation: []);

                                            return GestureDetector(
                                              onTap: () {
                                                TripperApp.navKey.currentState!.push(
                                                    MaterialPageRoute(builder: (_) => TripDetailsScreens(trip: trip)));
                                              },
                                              child: TripCard(trip: trip),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  )
                                : const Center(child: TripperEmptyState(emptyStateTypes: EmptyStateTypes.trip)),
                          ),
                        ),
                        // const SliverToBoxAdapter(child: ),
                        SliverAppBar(
                          backgroundColor: Theme.of(context).colorScheme.background,
                          flexibleSpace: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              5.verticalSpace,
                              const TitleHomeSection(title: 'اقسام المدينة'),
                              citySectionsTabBar(placeViewmodel),
                              5.verticalSpace,
                            ],
                          ),
                          leading: Container(),
                          elevation: 3,
                          titleSpacing: 0,
                          expandedHeight: 0,
                          collapsedHeight: 75.h,
                          toolbarHeight: 0,
                          pinned: true,
                          automaticallyImplyLeading: false,
                        ),
                      ];
                    },
                    body: Builder(builder: (context) {
                      return citySectionsTabBarView(context, placeViewmodel);
                    }),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget citySectionsTabBar(PlaceViewmodel placeViewmodel) {
    return MobxFutureBuilder<List<PlaceType>?>(
      future: placeViewmodel.placesTypeFuture,
      onError: (err) => IconButton(onPressed: placeViewmodel.fetchPlacesType, icon: const Icon(Icons.refresh)),
      onSuccess: (placesType) => ValueListenableBuilder<int>(
          valueListenable: _tabNotifier,
          builder: (context, currentTab, _) {
            final list = placesType?.map((e) => e.name!).toList() ?? [];
            return TabBar(
              controller: DefaultTabController.of(context),
              tabs: [
                for (int i = 0; i < list.length; i++)
                  Container(
                    constraints: BoxConstraints(minWidth: 76.w, maxHeight: 40.h),
                    alignment: AlignmentDirectional.center,
                    margin: HWEdgeInsetsDirectional.only(end: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7).r,
                        color: Theme.of(context).colorScheme.background,
                        border:
                            currentTab == i ? Border.all(color: Theme.of(context).colorScheme.primary, width: 2) : null,
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context).brightness == Brightness.dark
                                  ? Theme.of(context).colorScheme.grey600
                                  : Theme.of(context).colorScheme.grey100,
                              blurRadius: 5),
                        ]),
                    child: TripperText(text: list[i], textStyle: null),
                  ),
              ],
              labelColor: Theme.of(context).brightness == Brightness.dark
                  ? Theme.of(context).colorScheme.onBackground
                  : Theme.of(context).colorScheme.grey600,
              labelStyle: Theme.of(context).textTheme.bodyText1?.b,
              unselectedLabelColor: Theme.of(context).brightness == Brightness.dark
                  ? Theme.of(context).colorScheme.onBackground.withOpacity(0.7)
                  : Theme.of(context).colorScheme.grey300,
              unselectedLabelStyle: Theme.of(context).textTheme.bodyText1,
              padding: HWEdgeInsets.only(left: 20, right: 20, top: 10),
              labelPadding: EdgeInsets.zero,
              indicator: const BoxDecoration(),
              isScrollable: true,
              enableFeedback: false,
              onTap: (index) {
                _tabNotifier.value = index;

                placesTypeList = placesTypeList.map((e) {
                  if (e.id == placesTypeList[index].id) {
                    final placeType =
                        e.copyWith(pagingController: PagingController(firstPageKey: 1, invisibleItemsThreshold: 5));
                    return placeType;
                  } else {
                    return e;
                  }
                }).toList();

                placeViewmodel.changeStatusPagination();
              },
            );
          }),
      onLoading: () => TripperLoader(),
    );
  }

  Widget citySectionsTabBarView(BuildContext context, PlaceViewmodel placeViewmodel) {
    return ValueListenableBuilder<int>(
        valueListenable: _tabNotifier,
        builder: (context, snapshot, _) {
          return TabBarView(
            key: UniqueKey(),
            controller: DefaultTabController.of(context),
            physics: const NeverScrollableScrollPhysics(),
            children: placeViewmodel.placesType
                    ?.map(
                      (e) => CustomScrollView(
                        slivers: [
                          SliverPadding(
                            padding: HWEdgeInsets.symmetric(horizontal: 20, vertical: 16),
                            sliver: PagedSliverList<int, Place>.separated(
                              pagingController: placesTypeList[snapshot].pagingController!,
                              builderDelegate: PagedChildBuilderDelegate<Place>(
                                itemBuilder: (_, item, index) => GestureDetector(
                                    onTap: () {
                                      TripperApp.navKey.currentState!
                                          .push(MaterialPageRoute(builder: (_) => PlaceDetailsScreen(place: item)));
                                    },
                                    child: PlaceCard(place: item)),
                                firstPageProgressIndicatorBuilder: (_) => TripperLoader(),
                                newPageProgressIndicatorBuilder: (_) => TripperLoader(),
                                firstPageErrorIndicatorBuilder: (_) => TripperErrorState(
                                  error: const DioFailure(message: 'time out'),
                                  onRetry: () {
                                    placeViewmodel.changeStatusPagination();
                                  },
                                ),
                                noItemsFoundIndicatorBuilder: (_) =>
                                    const TripperEmptyState(emptyStateTypes: EmptyStateTypes.place),
                                // noMoreItemsIndicatorBuilder: (_)=> Container(height: 50,width: 50,color: Colors.green),
                              ),
                              separatorBuilder: (_, __) => 12.verticalSpace,
                            ),
                          )
                        ],
                      ),
                    )
                    .toList() ??
                [],
          );
        });
  }

  City get city => widget.city;
}
