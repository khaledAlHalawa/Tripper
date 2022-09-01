part of 'tripper_drawer.dart';

class _MenuScreen extends ConsumerStatefulWidget {
  const _MenuScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<_MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends ConsumerState<_MenuScreen> {
  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();

  bool get existUser => _prefsRepository.hasUser;
  late ValueNotifier<bool> themeSwitchNotifier;

  @override
  Widget build(BuildContext context) {
    final tripperViewmodel = ref.watch(AppProvidersContainer.tripperViewmodelProvider);
    final userViewmodel = ref.watch(AppProvidersContainer.userProvider);
    final drawerController = ZoomDrawer.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.drawer,
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: ksh64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: ksh24 + ksh4, end: 20.w, start: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Observer(
                          builder: (context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: CachedNetworkImage(
                                imageUrl: userViewmodel.profileFuture.value?.link ?? _prefsRepository.user?.link ?? '',
                                errorWidget: (_, url, error) => SvgPictureView(TripperAssets.ksvUserPlaceHolder2),
                                placeholder: (_, url) => SvgPictureView(TripperAssets.ksvUserPlaceHolder2),
                                width: 125.r,
                                height: 125.r,
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        ),
                        if (existUser) ...{
                          Sp.h16(),
                          Observer(
                            builder: (_){
                              return TripperText(
                                  text:
                                  '${userViewmodel.profileFuture.value?.firstName ?? _prefsRepository.user?.firstName ?? ""} '
                                      '${userViewmodel.profileFuture.value?.lastName ?? _prefsRepository.user?.lastName ?? ""}',
                                  maxLines: 3,
                                  textOverflow: TextOverflow.fade,
                                  translation: false,
                                  textAlign: TextAlign.center,
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: Theme.of(context).colorScheme.white));
                            },
                          ),
                        },
                      ],
                    ),
                  ),
                  Sw.size16(),
                  if (existUser)
                    SvgPictureView(
                      TripperAssets.ksvSetting,
                      function: () async {
                        drawerController?.close();
                        await Future.delayed(const Duration(milliseconds: 400));
                        tripperViewmodel.controller.jumpToTab(2);
                        tripperViewmodel.changePage(2);
                      },
                    )
                  else
                    SvgPictureView(
                      TripperAssets.ksvLogin,
                      function: () {
                        Navigator.of(context).pushAndRemoveUntil(WelcomePage.pageRoute, (route) => false);
                        tripperViewmodel.controller.jumpToTab(0);
                        tripperViewmodel.changePage(0);
                      },
                    ),
                ],
              ),
            ),
            Divider(height: 0, indent: 20.w),
            Expanded(
              child: ListView(
                padding: EdgeInsetsDirectional.only(bottom: ksh64),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ...menuSection1,
                  const Divider(height: 0),
                  ...menuSection2,
                  if (existUser) ...{
                    const Divider(height: 0),
                    ...menuSection3,
                  }
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<Widget> menuSection1;
  late List<Widget> menuSection2;
  late List<Widget> menuSection3;

  @override
  void initState() {
    super.initState();

    final tripperViewmodel = ref.read(AppProvidersContainer.tripperViewmodelProvider);
    final cityViewmodel = ref.read(AppProvidersContainer.cityProvider);

    themeSwitchNotifier = ValueNotifier(_prefsRepository.getTheme == ThemeMode.dark);

    menuSection3 = [
      _MenuItem(
        text: LocaleKeys.drawer_lbl_logout,
        icon: TripperAssets.ksvLogoutDrawer,
        onTap: () {
          showAnimatedDialog(context, widget: LogoutDialog());
        },
      ),
    ];

    menuSection2 = [
      _MenuItem(
        text: LocaleKeys.drawer_lbl_terms_and_conditions,
        icon: TripperAssets.ksvMagazine,
        onTap: () {
          TripperApp.navKey.currentState!.push(MaterialPageRoute(builder: (_) => const TermsAndConditionsScreen()));
        },
      ),
      _MenuItem(
        text: LocaleKeys.drawer_lbl_about_app,
        icon: TripperAssets.ksvInfo,
        onTap: () {
          TripperApp.navKey.currentState!.push(MaterialPageRoute(builder: (_) => const AboutAppScreen()));
        },
      ),
    ];

    menuSection1 = [
      _MenuItem(
        text: LocaleKeys.drawer_lbl_home,
        icon: TripperAssets.ksvHome,
        onTap: () async {
          tripperViewmodel.controller.jumpToTab(0);
          tripperViewmodel.changePage(0);
        },
      ),
      _MenuItem(
        text: LocaleKeys.drawer_lbl_cities,
        icon: TripperAssets.ksvBuildings,
        onTap: () {
          tripperViewmodel.controller.jumpToTab(0);
          tripperViewmodel.changePage(0);

          TripperApp.navKey.currentState!.push(
            MaterialPageRoute(builder: (_) => MostFamousCitiesScreen(cities: cityViewmodel.cities ?? [])),
          );
        },
      ),
      _MenuItem(
        text: LocaleKeys.drawer_lbl_trips,
        icon: TripperAssets.ksvAirplane,
        onTap: () {
          tripperViewmodel.controller.jumpToTab(0);
          tripperViewmodel.changePage(0);

          TripperApp.navKey.currentState!.push(MaterialPageRoute(builder: (_) => const AllNextTripScreen()));
        },
      ),
      _MenuItem(
        text: LocaleKeys.drawer_lbl_places,
        icon: TripperAssets.ksvLocation,
        onTap: () {
          tripperViewmodel.controller.jumpToTab(0);
          tripperViewmodel.changePage(0);
          TripperApp.navKey.currentState!.push(MaterialPageRoute(builder: (_) => const MostFamousPlacesScreen()));
        },
      ),
      _MenuItem(
        text: LocaleKeys.drawer_lbl_products,
        icon: TripperAssets.ksvBookmark,
        onTap: () {
          tripperViewmodel.controller.jumpToTab(0);
          tripperViewmodel.changePage(0);
          TripperApp.navKey.currentState!.push(MaterialPageRoute(builder: (_) => const AllProductsScreen()));
        },
      ),
      _MenuItem(
        text: LocaleKeys.drawer_lbl_favorite,
        icon: TripperAssets.ksvFavDrawer,
        onTap: () async {
          tripperViewmodel.controller.jumpToTab(1);
          tripperViewmodel.changePage(1);
        },
      ),
    ];
  }
}
