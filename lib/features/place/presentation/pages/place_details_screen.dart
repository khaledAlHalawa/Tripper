import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/features/app/data/models/favorite_relation.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/custom_smooth_indicator.dart';
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_empty_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_error_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/home/presentation/widgets/title_home_section.dart';
import 'package:app/features/place/data/models/place_details.dart';
import 'package:app/features/place/domain/use_cases/get_places_usecase.dart';
import 'package:app/features/place/domain/use_cases/show_place_usecase.dart';
import 'package:app/features/place/presentation/widgets/porduct_card.dart';
import 'package:app/features/trip/domain/entities/trip.dart';
import 'package:app/features/trip/presentation/manager/trip_viewmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/widgets/TripperHashtagWidget.dart';
import '../../../app/presentation/widgets/add_review.dart';
import '../../../app/presentation/widgets/comment_widget.dart';
import '../../../app/presentation/widgets/slider_image_details.dart';
import '../../../app/presentation/widgets/tripper_text.dart';
import '../../../trip/domain/use_cases/get_trips_usecase.dart';
import '../../../trip/presentation/pages/trip_details_screen.dart';
import '../../../trip/presentation/widgets/trip_card.dart';
import '../../domain/entities/place.dart';
import '../../domain/entities/review.dart';
import '../manager/place_viewmodel.dart';

class PlaceDetailsScreen extends ConsumerStatefulWidget {
  const PlaceDetailsScreen({Key? key, required this.place}) : super(key: key);

  final Place place;
  @override
  ConsumerState<PlaceDetailsScreen> createState() => _PlaceDetailsScreenState();
}

class _PlaceDetailsScreenState extends ConsumerState<PlaceDetailsScreen> {
  late ValueNotifier<int> _carouselNotifier;

  PlaceViewmodel placeViewmodel = GetIt.I<PlaceViewmodel>();
  TripViewmodel tripViewmodel = GetIt.I<TripViewmodel>();
  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();

  @override
  void initState() {
    super.initState();
    _carouselNotifier = ValueNotifier(0);
    tripViewmodel.fetchTrips(GetTripsParams(filterPlaceIds: [place.id!]));
    placeViewmodel.fetchPlaceDetails(ShowPlaceParams(placeId: place.id!));
  }

  @override
  Widget build(BuildContext context) {
    final placeStore = ref.watch(AppProvidersContainer.placeProvider);
    final tripStore = ref.watch(AppProvidersContainer.tripProvider);

    return Scaffold(
      body: Observer(builder: (context) {
        return MobxFutureBuilder<PlaceDetailsModel?>(
          future: placeViewmodel.getPlaceDetailsFuture,
          onSuccess: (placeDetails) {
            // final canAddReview =
            //     !(placeDetails?.reviews?.any((element) => element.userId == _prefsRepository.user?.id) ?? false);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Observer(builder: (context) {
                  final isFavorite =
                      placeStore.placeFuture.value?.singleWhere((element) => element.id == place.id).isFavorite;

                  return Padding(
                    padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 12),
                    child: SliderImageDetails.place(
                      images: place.medias?.map((e) => e.originalUrl ?? '').toList() ?? [],
                      place: place.copyWith(favoritesRelation: (isFavorite ?? false) ? [const FavoriteRelation()] : []),
                      onFavoritePlace: () {
                        placeStore.favoritePlace(favorableId: place.id!);
                      },
                    ),
                  );
                }),
                Padding(
                  padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TripperText(
                          text: place.name ?? '',
                          textStyle: Theme.of(context).textTheme.headline5?.copyWith(
                                color: Theme.of(context).colorScheme.onBackground,
                              )),
                      TripperText(
                          text: '(${place.placeType ?? ''})',
                          textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
                              )),
                    ],
                  ),
                ),
                Padding(
                  padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 10),
                  child: TripperText(
                    text: placeDetails?.description ?? '',
                    textStyle: Theme.of(context)
                        .textTheme
                        .caption
                        ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                  ),
                ),
                Expanded(
                  child: NestedScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    headerSliverBuilder: (context, innerBoxScrolled) {
                      return [
                        SliverToBoxAdapter(child: 10.verticalSpace),
                        SliverPadding(
                          padding: HWEdgeInsetsDirectional.only(end: 20, start: 20, bottom: 10),
                          sliver: SliverToBoxAdapter(
                            child: Wrap(
                              runSpacing: 10.h,
                              spacing: 10.w,
                              children: List.generate(
                                  placeDetails?.placeTypeTag?.length ?? 0,
                                  (index) =>
                                      TripperHashtagWidget(hashTag: placeDetails!.placeTypeTag![index].tag!.name!)),
                            ),
                          ),
                        ),
                        // SliverPadding(
                        //   padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 6),
                        //   sliver: SliverToBoxAdapter(
                        //     child: TripperText(
                        //       text: 'نوع الزائرين',
                        //       textStyle: Theme.of(context)
                        //           .textTheme
                        //           .bodyText1
                        //           ?.b
                        //           .copyWith(color: Theme.of(context).colorScheme.grey600),
                        //     ),
                        //   ),
                        // ),
                        // SliverPadding(
                        //   padding: HWEdgeInsetsDirectional.only(start: 20, end: 20, bottom: 22),
                        //   sliver: SliverToBoxAdapter(
                        //     child: TripperText(
                        //       text: 'يمنع اصطحاب الأطفال',
                        //       textStyle: Theme.of(context)
                        //           .textTheme
                        //           .caption
                        //           ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                        //     ),
                        //   ),
                        // ),
                        SliverToBoxAdapter(
                          child: Observer(builder: (context) {
                            return TitleHomeSection(
                              title: 'الرحلات إلى ${place.name ?? ''}',
                              onShowAll: () {},
                              lengthList: tripViewmodel.trips?.length,
                            );
                          }),
                        ),
                        SliverToBoxAdapter(child: 10.verticalSpace),
                        SliverToBoxAdapter(
                          child: MobxFutureBuilder<List<Trip>?>(
                            future: tripViewmodel.tripsFuture,
                            onError: (err) => TripperErrorState(error: err, onRetry: fetchTripsAction),
                            onLoading: () => TripperLoader(),
                            onSuccess: (trips) {
                              if ((trips?.length ?? 0) == 0) {
                                return const TripperEmptyState(emptyStateTypes: EmptyStateTypes.trip);
                              }
                              return Padding(
                                padding: HWEdgeInsets.only(top: 10, bottom: 20),
                                child: SizedBox(
                                  height: 265.h,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    padding: HWEdgeInsets.symmetric(horizontal: 20),
                                    itemCount: trips?.take(3).length ?? 0,
                                    separatorBuilder: (_, __) => 10.horizontalSpace,
                                    itemBuilder: (context, index) {
                                      Trip trip = trips![index];
                                      return Observer(builder: (context) {
                                        final isFavorite = tripStore.tripsFuture.value!
                                            .singleWhere((element) => element.id == trips[index].id)
                                            .isFavorite;

                                        trip = trip.copyWith(
                                            favoritesRelation: isFavorite == true ? [const FavoriteRelation()] : []);

                                        return GestureDetector(
                                          onTap: () {
                                            TripperApp.navKey.currentState!.push(
                                                MaterialPageRoute(builder: (_) => TripDetailsScreens(trip: trip)));
                                          },
                                          child: TripCard(trip: trip),
                                        );
                                      });
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SliverToBoxAdapter(child: TitleHomeSection(title: 'خصائص ${place.name ?? ''}')),
                        SliverToBoxAdapter(
                          child: (placeDetails?.specs?.length ?? 0) == 0
                              ? const TripperEmptyState(emptyStateTypes: EmptyStateTypes.specs)
                              : CarouselSlider(
                                  options: CarouselOptions(
                                    height: 100.h,
                                    autoPlay: false,
                                    viewportFraction: 0.45,
                                    enableInfiniteScroll: false,
                                    onPageChanged: (index, reason) => _carouselNotifier.value = index,
                                  ),
                                  // carouselController: carouselController,
                                  items: List.generate(
                                    placeDetails?.specs?.length ?? 0,
                                    (position) => Container(
                                        width: 162.w,
                                        margin: HWEdgeInsetsDirectional.only(top: 10, bottom: 15),
                                        padding: HWEdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.background,
                                            borderRadius: BorderRadius.circular(7).r,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Theme.of(context).colorScheme.brightness == Brightness.dark
                                                    ? Theme.of(context).colorScheme.grey600
                                                    : Theme.of(context).colorScheme.grey100,
                                                blurRadius: 7,
                                              ),
                                            ]),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TripperText(
                                              text: placeDetails?.specs?[position].name ?? '',
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2
                                                  ?.b
                                                  .copyWith(color: Theme.of(context).colorScheme.grey300),
                                            ),
                                            7.verticalSpace,
                                            Wrap(
                                              spacing: 30,
                                              runSpacing: 10,
                                              children: List.generate(
                                                  placeDetails?.specsPlace
                                                          ?.singleWhere((element) =>
                                                              element.specsId == placeDetails.specs?[position].id)
                                                          .options
                                                          ?.length ??
                                                      0,
                                                  (index) => TripperText(
                                                        text:
                                                            ' - ${placeDetails?.specsPlace?[position].options?[index].name ?? ''}',
                                                        textStyle: Theme.of(context).textTheme.caption?.copyWith(
                                                            color:
                                                                Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                                                      )),
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                        ),
                        SliverToBoxAdapter(
                          child: Center(
                            child: ValueListenableBuilder<int>(
                                valueListenable: _carouselNotifier,
                                builder: (context, currentIndex, _) {
                                  return CustomIndicator(
                                    currentIndex: currentIndex,
                                    count: placeDetails?.specs?.length ?? 0,
                                    dotColor: Theme.of(context).colorScheme.grey200.withOpacity(0.6),
                                    activeDotColor: Theme.of(context).colorScheme.grey200,
                                  );
                                }),
                          ),
                        ),
                        SliverToBoxAdapter(child: 20.verticalSpace),
                        SliverToBoxAdapter(
                            child: TitleHomeSection(title: 'المنتجات ضمن ${place.name ?? ''}', onShowAll: () {})),
                        SliverToBoxAdapter(child: 10.verticalSpace),
                        if ((placeDetails?.products?.length ?? 0) == 0)
                          const SliverToBoxAdapter(child: TripperEmptyState(emptyStateTypes: EmptyStateTypes.products))
                        else
                          SliverPadding(
                            padding: HWEdgeInsets.only(top: 10, bottom: 20),
                            sliver: SliverToBoxAdapter(
                              child: SizedBox(
                                height: 265.h,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  padding: HWEdgeInsets.symmetric(horizontal: 20),
                                  itemCount: placeDetails?.products?.length ?? 0,
                                  separatorBuilder: (_, __) => 10.horizontalSpace,
                                  itemBuilder: (context, index) {
                                    final product = placeDetails!.products![index];
                                    return ProductCard(product: product);
                                  },
                                ),
                              ),
                            ),
                          ),
                        SliverAppBar(
                          backgroundColor: Theme.of(context).colorScheme.background,
                          flexibleSpace: Padding(
                            padding: HWEdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TripperText(
                                  text: 'التعليقات والتقييمات',
                                  textStyle: Theme.of(context).textTheme.bodyText1?.b.copyWith(
                                        color: Theme.of(context).colorScheme.grey600,
                                      ),
                                ),
                                InkWell(
                                  onTap: () {
                                    final oldReviewUser = placeDetails?.reviews?.where(
                                      (element) => element.user?.id == _prefsRepository.user?.id,
                                    );

                                    showModalBottomSheet(
                                      context: context,
                                      builder: (_) {
                                        return Observer(builder: (context) {
                                          return AddReviewWidget(
                                            comment: oldReviewUser?.first.comment,
                                            rating: oldReviewUser?.first.review?.toDouble(),
                                            onReview: (context, int rating, String comment) {
                                              placeViewmodel.reviewPlace(
                                                rating,
                                                placeDetails!.id!,
                                                comment: comment,
                                                onSuccessReview: () {
                                                  Navigator.pop(context);
                                                  ref
                                                      .watch<PlaceViewmodel>(AppProvidersContainer.placeProvider)
                                                      .fetchPlaces(GetPlacesParams(), 1);
                                                },
                                              );
                                            },
                                            viewmodel: placeViewmodel,
                                          );
                                        });
                                      },
                                      isScrollControlled: true,
                                      enableDrag: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ).r,
                                      ),
                                    );
                                    // TripperDraggableSheet.show(context: context, builder: (_,sc){
                                    // });
                                  },
                                  child: TripperText(
                                    text: "إضافة تعليق",
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(color: Theme.of(context).colorScheme.grey300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          leading: Container(),
                          elevation: 3,
                          titleSpacing: 0,
                          expandedHeight: 0,
                          collapsedHeight: 40,
                          toolbarHeight: 0,
                          pinned: true,
                          automaticallyImplyLeading: false,
                        ),
                      ];
                    },
                    body: (placeDetails?.reviews?.length ?? 0) == 0
                        ? const SingleChildScrollView(
                            child: TripperEmptyState(emptyStateTypes: EmptyStateTypes.comments))
                        : ListView.separated(
                            padding: HWEdgeInsets.only(bottom: 60),
                            itemBuilder: (_, index) {
                              final review = placeDetails!.reviews![index];
                              return CommentWidget(review: review);
                            },
                            separatorBuilder: (index, _) => 15.verticalSpace,
                            itemCount: placeDetails?.reviews?.length ?? 0,
                          ),
                  ),
                ),
              ],
            );
          },
          onError: (err) => const SizedBox(),
          onLoading: () => TripperLoader(),
        );
      }),
    );
  }

  Place get place => widget.place;

  fetchTripsAction() {
    tripViewmodel.fetchTrips(GetTripsParams(filterPlaceIds: [place.id!]));
  }
}
