import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/core/utils/extensions/formatter.dart';
import 'package:app/features/app/data/models/favorite_relation.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/add_review.dart';
import 'package:app/features/app/presentation/widgets/date_chips.dart';
import 'package:app/features/app/presentation/widgets/tripper_empty_state.dart';
import 'package:app/features/trip/presentation/manager/trip_viewmodel.dart';
import 'package:app/features/trip/presentation/pages/trip_path_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../../../../common/constant/design/assets_provider.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../../app/presentation/widgets/comment_widget.dart';
import '../../../app/presentation/widgets/google_maps_widget.dart';
import '../../../app/presentation/widgets/joined_list_widget.dart';
import '../../../app/presentation/widgets/slider_image_details.dart';
import '../../../app/presentation/widgets/tripper_text.dart';
import '../../../place/domain/entities/review.dart';
import '../../domain/entities/place_trip.dart';
import '../../domain/entities/trip.dart';

class TripDetailsScreens extends ConsumerStatefulWidget {
  const TripDetailsScreens({Key? key, required this.trip}) : super(key: key);

  final Trip trip;
  @override
  ConsumerState<TripDetailsScreens> createState() => _TripDetailsScreensState();
}

class _TripDetailsScreensState extends ConsumerState<TripDetailsScreens> {
  late TripViewmodel tripViewmodel;
  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tripViewmodel = ref.watch(AppProvidersContainer.tripProvider);

    return Scaffold(
      body: Padding(
        padding: HWEdgeInsetsDirectional.only(start: 20, end: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: NestedScrollView(
                physics: const NeverScrollableScrollPhysics(),
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    Observer(builder: (context) {
                      final isFavorite =
                          tripViewmodel.tripsFuture.value!.singleWhere((element) => element.id == trip.id).isFavorite;

                      return SliverAppBar(
                        flexibleSpace: SliderImageDetails.trip(
                          images: images,
                          trip: trip.copyWith(favoritesRelation: isFavorite ? [const FavoriteRelation()] : []),
                          onFavoriteTrip: () {
                            tripViewmodel.favoriteTrip(favorableId: trip.id!);
                          },
                        ),
                        leading: Container(),
                        elevation: 3,
                        titleSpacing: 0,
                        expandedHeight: 362.h,
                        collapsedHeight: 200.h,
                        toolbarHeight: 0,
                        pinned: true,
                        automaticallyImplyLeading: false,
                      );
                    }),
                    SliverAppBar(
                      flexibleSpace: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          15.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  DateChips(
                                    assetIcon: TripperAssets.ksvDate,
                                    date: trip.startedAt?.nameDayAndNumberOfMonth ?? '',
                                  ),
                                  10.horizontalSpace,
                                  DateChips(
                                    assetIcon: TripperAssets.ksvTime,
                                    date: "يوم ${trip.max}",
                                  ),
                                ],
                              ),
                              joinedList()
                            ],
                          ),
                          8.verticalSpace,
                          TripperText(
                              text: 'رحلة ${trip.name}',
                              textStyle: Theme.of(context).textTheme.headline5?.b.copyWith(
                                    color: Theme.of(context).colorScheme.onBackground,
                                  )),
                          5.verticalSpace,
                        ],
                      ),
                      leading: Container(),
                      surfaceTintColor: Theme.of(context).colorScheme.background,
                      elevation: 3,
                      titleSpacing: 0,
                      collapsedHeight: 78.h,
                      toolbarHeight: 78.h,
                      pinned: true,
                      automaticallyImplyLeading: false,
                    ),
                    SliverPadding(
                      padding: HWEdgeInsetsDirectional.only(bottom: 12),
                      sliver: SliverToBoxAdapter(
                        child: TripperText(
                          text: trip.description ?? '',
                          textStyle: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                          maxLines: 3,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: HWEdgeInsetsDirectional.only(bottom: 12),
                      sliver: SliverToBoxAdapter(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TripperText(
                                  text: 'نوع الرحلة',
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.b
                                      .copyWith(color: Theme.of(context).colorScheme.grey600),
                                ),
                                6.verticalSpace,
                                TripperText(
                                  text: 'رحلة ${trip.type == 'public' ? "عامة" : "عائلية"}',
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                                ),
                              ],
                            ),
                            // Padding(
                            //   padding: HWEdgeInsetsDirectional.only(end: 50),
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       TripperText(
                            //         text: 'نوع المشتركين',
                            //         textStyle: Theme.of(context)
                            //             .textTheme
                            //             .bodyText1
                            //             ?.b
                            //             .copyWith(color: Theme.of(context).colorScheme.grey600),
                            //       ),
                            //       6.verticalSpace,
                            //       TripperText(
                            //         text: 'للعائلات فقط',
                            //         textStyle: Theme.of(context)
                            //             .textTheme
                            //             .caption
                            //             ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: HWEdgeInsetsDirectional.only(bottom: 20),
                      sliver: SliverToBoxAdapter(
                        child: Row(
                          children: [
                            TripperText(
                              text: (trip.cost ?? '').toString(),
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.b
                                  .copyWith(color: Theme.of(context).colorScheme.primary),
                              maxLines: 3,
                            ),
                            TripperText(
                              text: ' ل.س',
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.r
                                  .copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: HWEdgeInsetsDirectional.only(bottom: 6),
                      sliver: SliverToBoxAdapter(
                        child: TripperText(
                          text: 'مسار الرحلة',
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.b
                              .copyWith(color: Theme.of(context).colorScheme.grey600),
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: HWEdgeInsetsDirectional.only(bottom: 12),
                      sliver: SliverToBoxAdapter(
                        child: TripperText(
                          text: trip.stations?[0].name ?? '',
                          textStyle: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                          maxLines: 3,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        height: 300.h,
                        width: double.infinity,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10).r),
                        child: Stack(
                          children: [
                            GoogleMapsWidget(places: places),
                            Align(
                              alignment: AlignmentDirectional.bottomCenter,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => TripPathPage(places: places)),
                                  );
                                },
                                borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10))
                                    .r,
                                child: Container(
                                  width: double.infinity,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.grey300.withOpacity(0.8),
                                    borderRadius: const BorderRadius.only(
                                            bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10))
                                        .r,
                                  ),
                                  alignment: AlignmentDirectional.center,
                                  child: TripperText(
                                    text: 'عرض التفاصيل كافة',
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.b
                                        .copyWith(color: Theme.of(context).colorScheme.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SliverAppBar(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      surfaceTintColor: Theme.of(context).colorScheme.background,
                      flexibleSpace: Padding(
                        padding: HWEdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Observer(builder: (context) {
                          // final canAddReview =
                          //     !(trip.reviews?.any((element) => element.userId == _prefsRepository.user?.id) ?? false);

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TripperText(
                                text: 'التعليقات والتقييمات',
                                textStyle: Theme.of(context).textTheme.bodyText1?.b.copyWith(
                                      color: Theme.of(context).colorScheme.grey600,
                                    ),
                              ),
                              Observer(builder: (context) {
                                return InkWell(
                                  onTap: () {
                                    final reviews = tripViewmodel.tripsFuture.value
                                            ?.singleWhere((element) => element.id == trip.id,
                                                orElse: () => const Trip(reviews: []))
                                            .reviews ??
                                        trip.reviews;
                                    final oldReviewUser = reviews?.where(
                                      (element) => element.user?.id == _prefsRepository.user?.id,
                                    ).toList();

                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      enableDrag: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ).r,
                                      ),
                                      builder: (_) => AddReviewWidget(
                                        rating: (oldReviewUser !=  null && (oldReviewUser.length ) != 0) ? oldReviewUser.first.review?.toDouble() : null,
                                        comment: (oldReviewUser !=  null && (oldReviewUser.length) != 0) ? oldReviewUser.first.comment : null,
                                        onReview: (_, rating, comment) {
                                          tripViewmodel.reviewTrip(
                                            rating,
                                            trip.id!,
                                            comment: comment,
                                            onSuccessReview: () {
                                              Navigator.pop(context);
                                            },
                                          );
                                        },
                                        viewmodel: tripViewmodel,
                                      ),
                                    );
                                  },
                                  child: TripperText(
                                    text: "إضافة تعليق",
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(color: Theme.of(context).colorScheme.grey300),
                                  ),
                                );
                              }),
                            ],
                          );
                        }),
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
                body: Observer(builder: (context) {
                  final reviews =
                      tripViewmodel.tripsFuture.value?.singleWhere((element) => element.id == trip.id).reviews ??
                          trip.reviews;
                  if ((reviews?.length ?? 0) == 0) {
                    return const SingleChildScrollView(
                        child: TripperEmptyState(emptyStateTypes: EmptyStateTypes.comments));
                  }

                  return ListView.separated(
                    padding: HWEdgeInsets.only(bottom: 25),
                    itemBuilder: (_, index) {
                      final review = reviews![index];
                      return CommentWidget(review: review);
                    },
                    separatorBuilder: (index, _) => 15.verticalSpace,
                    itemCount: reviews?.length ?? 0,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget joinedList() {
    return Observer(builder: (context) {
      final reviews =
          tripViewmodel.tripsFuture.value?.singleWhere((element) => element.id == trip.id).reviews ?? trip.reviews;

      return Row(
        children: [
          // Padding(
          //   padding: EdgeInsetsDirectional.only(end: 28.r),
          //   child: TripperText(
          //       text: "14+/24",
          //       textStyle: Theme.of(context).textTheme.caption?.copyWith(
          //             color: Theme.of(context).colorScheme.grey300,
          //           )),
          // ),
          JoinedListWidget(
            imagesUrl: reviews?.map((e) => e.user!.link!).toList() ?? [],
          )
        ],
      );
    });
  }

  Trip get trip => widget.trip;

  List<PlaceTrip> get places {
    final list = <PlaceTrip>[];

    trip.stations?.forEach((element) {
      element.journeyPlaces?.forEach((element) {
        list.add(element.place!);
      });
    });

    return list;
  }

  List<String> get images {
    final list = <String>[];

    trip.stations?.forEach((element) {
      element.journeyPlaces?.forEach((element) {
        list.addAll(element.place?.media?.map((e) => e.originalUrl!) ?? []);
      });
    });

    return list;
  }
}
