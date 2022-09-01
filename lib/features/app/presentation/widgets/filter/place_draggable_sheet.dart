import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/place/domain/use_cases/get_places_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../../../../core/utils/responsive_padding.dart';
import '../../../../place/domain/entities/place.dart';
import '../../../../place/presentation/manager/place_viewmodel.dart';
import '../../../../trip/presentation/manager/trip_viewmodel.dart';
import '../../viewmodel/app_providers.dart';
import '../tripper_loader.dart';

class PlaceDraggableSheet extends ConsumerStatefulWidget {
  const PlaceDraggableSheet({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  final ScrollController scrollController;
  @override
  ConsumerState<PlaceDraggableSheet> createState() => _PlaceDraggableSheetState();
}

class _PlaceDraggableSheetState extends ConsumerState<PlaceDraggableSheet> {
  late PlaceViewmodel placeViewmodel;

  @override
  void initState() {
    super.initState();

    placeViewmodel = GetIt.I<PlaceViewmodel>();

    placeViewmodel.pagingController.addPageRequestListener((pageKey) {
      placeViewmodel.fetchPlaces(GetPlacesParams(page: pageKey.toString()), pageKey);
    });
  }

  late TripViewmodel tripViewmodel;

  @override
  Widget build(BuildContext context) {
    tripViewmodel = ref.watch(AppProvidersContainer.tripProvider);

    return Observer(
      builder: (context) {
        return Padding(
          padding: HWEdgeInsets.only(top: 10, bottom: 20),
          child: PagedListView<int, Place>(
            pagingController: placeViewmodel.pagingController,
            shrinkWrap: true,
            scrollController: widget.scrollController,
            physics: const BouncingScrollPhysics(),
            builderDelegate: PagedChildBuilderDelegate<Place>(
              firstPageProgressIndicatorBuilder: (_) => SizedBox(height: 400.h, child: TripperLoader()),
              newPageProgressIndicatorBuilder: (_) => TripperLoader(),
              itemBuilder: (context, item, index) {
                return InkWell(
                  onTap: () => tripViewmodel.addOrRemovePlaceEntry(MapEntry<String, String>(item.id!, item.name!)),
                  child: placeItem(place: item, index: index),
                );
              },
            ),
          ),
        );
      },
    );
  }

  placeItem({required Place place, required int index}) {
    return Observer(builder: (context) {
      bool isAdded = tripViewmodel.selectedPlaces.keys.any((element) => element == place.id);

      return Container(
        padding: HWEdgeInsetsDirectional.only(top: 13, bottom: 16, start: 50),
        color: index.isOdd ? Theme.of(context).colorScheme.grey200.withOpacity(0.05) : null,
        child: Row(
          children: [
            TripperText(
              text: place.name!,
              textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.grey),
            ),
            if (isAdded) ...{
              const Spacer(),
              Icon(Icons.done, color: Theme.of(context).colorScheme.grey, size: 18),
              20.horizontalSpace,
            }
          ],
        ),
      );
    });
  }
}
