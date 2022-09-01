import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/viewmodel/tripper_viewmodel.dart';
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_empty_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_error_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_image_component.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/city/presentation/widgets/city_card.dart';
import 'package:app/features/place/presentation/widgets/place_card.dart';
import 'package:app/features/profile/presentation/manager/user_viewmodel.dart';
import 'package:app/features/profile/presentation/pages/edit_profile.dart';
import 'package:app/features/trip/presentation/widgets/trip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../../../../common/helper/helper_functions.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/widgets/image_view/svg_view.dart';
import '../../../app/presentation/widgets/tripper_guest_widget.dart';
import '../../../auth/domain/entities/user.dart';
import '../../../place/domain/entities/place.dart';
import '../../../trip/domain/entities/trip.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ValueNotifier<int> _tabNotifier;
  final List listTabs = ['رحلاتي', 'الأماكن', 'المدن'];
  late ValueNotifier<bool> themeSwitchNotifier;
  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listTabs.length, vsync: this);
    _tabNotifier = ValueNotifier(0);
    themeSwitchNotifier = ValueNotifier(_prefsRepository.getTheme == ThemeMode.dark);

    if (_prefsRepository.hasUser) {
      ref.read<UserViewmodel>(AppProvidersContainer.userProvider).fetchProfile();
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewmodel = ref.watch<UserViewmodel>(AppProvidersContainer.userProvider);
    final tripperViewmodel = ref.watch<TripperViewModel>(AppProvidersContainer.tripperViewmodelProvider);

    return Scaffold(
      body: Observer(builder: (context) {
        return SingleChildScrollView(
          padding: HWEdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              if (_prefsRepository.hasUser)
                MobxFutureBuilder<User?>(
                  onLoading: () => TripperLoader(),
                  onError: (err) => TripperErrorState(error: err, onRetry: viewmodel.fetchProfile),
                  future: viewmodel.profileFuture,
                  onSuccess: (user) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: TripperImageComponent(
                          imageUrl: user?.link ?? '',
                          mode: ImageComponentMode.normal,
                          onTap: () {
                            TripperApp.navKey.currentState!
                                .push(MaterialPageRoute(builder: (_) => EditProfileScreen(user: user!)));
                          },
                        ),
                      ),
                      18.verticalSpace,
                      TripperText(
                        text: '${user!.firstName!} ${user.lastName!}',
                        textStyle: textTheme.headline4,
                      ),
                      10.verticalSpace,
                      TripperText(
                        text: user.email ?? '',
                        textStyle: textTheme.subtitle2?.copyWith(color: colorScheme.grey),
                      ),

                      // Align(
                      //     alignment: AlignmentDirectional.centerStart,
                      //     child: profileTabBar()),
                      // profileTabBarView(),
                    ],
                  ),
                )
              else
                const TripperGuestWidget(),

              50.verticalSpace,
              Padding(
                padding: HWEdgeInsetsDirectional.only(start: 30, end: 30),
                child: Row(
                  children: [
                    TripperText(
                      text: 'الوضع الليلي:',
                      textStyle:
                          Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.grey600),
                    ),
                    const Spacer(),
                    ValueListenableBuilder<bool>(
                        valueListenable: themeSwitchNotifier,
                        builder: (_, value, child) {
                          return CupertinoSwitch(
                            value: value,
                            activeColor: Theme.of(context).colorScheme.primary,
                            onChanged: (value) async {
                              themeSwitchNotifier.value = value;
                              ThemeMode mode = value ? ThemeMode.dark : ThemeMode.light;
                              await Future.delayed(const Duration(milliseconds: 200));
                              tripperViewmodel.changeTheme(
                                mode,
                                onChangedTheme: () {
                                  HelperFunctions.changeAppStatus(mode);
                                },
                              );
                            },
                          );
                        }),
                  ],
                ),
              ),
              // 100.verticalSpace,
              // SvgPictureView(TripperAssets.ksvLogoPrimary),
              // TripperEmptyState()
              // TripperGuestWidget()
            ],
          ),
        );
      }),
    );
  }

  Widget profileTabBar() {
    return ValueListenableBuilder<int>(
        valueListenable: _tabNotifier,
        builder: (context, currentTab, _) {
          return TabBar(
            controller: _tabController,
            tabs: [for (int i = 0; i < listTabs.length; i++) Tab(text: listTabs[i])],
            labelColor: Theme.of(context).colorScheme.grey600,
            labelStyle: Theme.of(context).textTheme.bodyText1?.b,
            unselectedLabelColor: Theme.of(context).colorScheme.grey300,
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

  Widget profileTabBarView() {
    return Expanded(
      child: Padding(
        padding: HWEdgeInsets.only(top: 8),
        child: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ListView.separated(
              separatorBuilder: (index, _) => 10.verticalSpace,
              itemCount: 5,
              padding: HWEdgeInsetsDirectional.only(end: 20, start: 20, top: 7, bottom: 40),
              itemBuilder: (index, _) => TripCard(trip: Trip()),
            ),
            ListView.separated(
              separatorBuilder: (index, _) => 10.verticalSpace,
              itemCount: 5,
              padding: HWEdgeInsetsDirectional.only(end: 20, start: 20, top: 7, bottom: 40),
              itemBuilder: (index, _) => PlaceCard(place: Place()),
            ),
            ListView.separated(
              separatorBuilder: (index, _) => 10.verticalSpace,
              itemCount: 5,
              padding: HWEdgeInsetsDirectional.only(end: 20, start: 20, top: 7, bottom: 40),
              itemBuilder: (index, _) => const CityCard(city: null),
            ),
          ],
        ),
      ),
    );
  }
}
