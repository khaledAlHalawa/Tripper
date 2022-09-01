import 'dart:developer';

import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/features/app/data/models/favorite_relation.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_empty_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_error_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_guest_widget.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/place/presentation/widgets/place_card.dart';
import 'package:app/features/trip/presentation/widgets/trip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/responsive_padding.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../../app/presentation/pages/tripper_app.dart';
import '../../../place/domain/entities/place.dart';
import '../../../place/presentation/pages/place_details_screen.dart';
import '../../../trip/domain/entities/trip.dart';
import '../manager/favorite_viewmodel.dart';

class FavoritePage extends ConsumerStatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  ConsumerState<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends ConsumerState<FavoritePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ValueNotifier<int> _tabNotifier;
  late FavoriteViewmodel viewmodel;
  final List listTabs = ['الرحلات', 'الأماكن'];

  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();

  @override
  void initState() {
    super.initState();
    viewmodel = ref.read(AppProvidersContainer.favoriteProvider);
    _tabController = TabController(length: listTabs.length, vsync: this)
      ..addListener(() {
        if (_tabController.indexIsChanging) {
          log("tab is animating. from active (getting the index) to inactive(getting the index) ");
        } else {
          //tab is finished animating you get the current index
          //here you can get your index or run some method once.
          log(_tabController.index.toString());

          if (_tabController.index == 0) {
            viewmodel.fetchFavoriteTrips();
          } else {
            viewmodel.fetchFavoritePlaces();
          }
        }
      });
    _tabNotifier = ValueNotifier(0);
    if (_prefsRepository.hasUser) {
      viewmodel.fetchFavoriteTrips();
    }
  }

  @override
  Widget build(BuildContext context) {
    viewmodel = ref.watch(AppProvidersContainer.favoriteProvider);

    return Scaffold(
      body: _prefsRepository.hasUser
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: HWEdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
                //   child: TripperTextField(
                //     inputDecorationType: InputDecorationType.normal,
                //     controller: TextEditingController(),
                //     decorationParam: InputDecorationParam(
                //       hintText: "ابحث عن...",
                //       // icon: Icon(Icons.search),
                //       contentPadding: HWEdgeInsetsDirectional.only(top: 18, end: 10),
                //       prefixIcon: Row(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           22.horizontalSpace,
                //           const Icon(Icons.search),
                //           Container(
                //             width: 1,
                //             margin: HWEdgeInsets.symmetric(vertical: 14, horizontal: 7),
                //             decoration: BoxDecoration(
                //                 color: Theme.of(context).colorScheme.grey200.withOpacity(0.4),
                //                 borderRadius: BorderRadius.circular(5)),
                //
                //             // height: double.infinity,
                //           ),
                //         ],
                //       ),
                //       isDense: false,
                //     ),
                //     maxLines: 1,
                //   ),
                // ),
                favoriteTabBar(),
                favoriteTabBarView()
              ],
            )
          : const Center(child: TripperGuestWidget()),
    );
  }

  Widget favoriteTabBar() {
    return ValueListenableBuilder<int>(
        valueListenable: _tabNotifier,
        builder: (context, currentTab, _) {
          return TabBar(
            controller: _tabController,
            tabs: [for (int i = 0; i < listTabs.length; i++) Tab(text: listTabs[i])],
            labelColor: Theme.of(context).brightness == Brightness.dark
                ? Theme.of(context).colorScheme.white
                : Theme.of(context).colorScheme.grey600,
            labelStyle: Theme.of(context).textTheme.button?.b,
            unselectedLabelColor: Theme.of(context).brightness == Brightness.dark
                ? Theme.of(context).colorScheme.grey200
                : Theme.of(context).colorScheme.grey300,
            unselectedLabelStyle: Theme.of(context).textTheme.bodyText1,
            padding: HWEdgeInsets.only(left: 20, right: 20, top: 10),
            indicatorColor: Theme.of(context).colorScheme.primary,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            enableFeedback: false,
            splashBorderRadius: BorderRadius.circular(4).r,
            onTap: (index) => _tabNotifier.value = index,
          );
        });
  }

  Widget favoriteTabBarView() {
    return Expanded(
      child: Observer(builder: (context) {
        return TabBarView(
          controller: _tabController,
          children: [
            MobxFutureBuilder<List<Trip>?>(
              future: viewmodel.favoriteTrips,
              onSuccess: (favorites) {
                if ((favorites?.length ?? 0) == 0) {
                  return const TripperEmptyState(
                    emptyStateTypes: EmptyStateTypes.favorite,
                    description: 'أضف رحلاتك المفضلة في التطبيق لتصل إليها فوراً.',
                  );
                }
                return ListView.separated(
                  separatorBuilder: (index, _) => 10.verticalSpace,
                  itemCount: favorites?.length ?? 0,
                  padding: HWEdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  itemBuilder: (_, index) {
                    final favorite = favorites![index];
                    return TripCard(trip: favorite.copyWith(favoritesRelation: [const FavoriteRelation()]));
                  },
                );
              },
              onError: (err) => TripperErrorState(error: err, onRetry: viewmodel.fetchFavoriteTrips),
              onLoading: () => TripperLoader(),
            ),
            MobxFutureBuilder<List<Place>?>(
              future: viewmodel.favoritePlaces,
              onSuccess: (favorites) {
                if ((favorites?.length ?? 0) == 0) {
                  return const TripperEmptyState(
                    emptyStateTypes: EmptyStateTypes.favorite,
                    description: 'أضف أماكنك المفضلة في التطبيق لتصل إليها فوراً.',
                  );
                }
                return ListView.separated(
                  separatorBuilder: (index, _) => 10.verticalSpace,
                  itemCount: favorites?.length ?? 0,
                  padding: HWEdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  itemBuilder: (_, index) {
                    final favorite = favorites![index];
                    return GestureDetector(
                        onTap: () {
                          TripperApp.navKey.currentState!
                              .push(MaterialPageRoute(builder: (_) => PlaceDetailsScreen(place: favorite)));
                        },
                        child: PlaceCard(place: favorite.copyWith(favoritesRelation: [const FavoriteRelation()])));
                  },
                );
              },
              onError: (err) => TripperErrorState(error: err, onRetry: viewmodel.fetchFavoritePlaces),
              onLoading: () => TripperLoader(),
            ),
          ],
        );
      }),
    );
  }
}
