import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/formatter.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/joined_list_widget.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/trip/domain/entities/trip.dart';
import 'package:app/features/trip/presentation/manager/trip_viewmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/constant/design/assets_provider.dart';
import '../../../app/presentation/widgets/date_chips.dart';
import '../../../app/presentation/widgets/favorite_button.dart';
import '../../../app/presentation/widgets/sized_boxes/sizedbox.dart';

class TripCard extends ConsumerWidget {
  TripCard({Key? key, required this.trip}) : super(key: key);

  final Trip trip;
  late TripViewmodel tripViewmodel;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    tripViewmodel = ref.watch(AppProvidersContainer.tripProvider);

    return SizedBox(
      width: 248.w,
      height: 210.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10).r,
              child: Stack(
                children: [
                  Row(
                    children: List.generate(
                      images.length,
                      (index) => Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Colors.black26,
                            Colors.transparent,
                          ],
                          begin: AlignmentDirectional.bottomCenter,
                          end: AlignmentDirectional.topCenter,
                          stops: [0.0, 0.8]),
                      borderRadius: BorderRadius.circular(10).r,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10).r,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DateChips(
                                  assetIcon: TripperAssets.ksvDate, date: trip.startedAt?.nameDayAndNumberOfMonth ?? ''
                                  // "نيسان 15",
                                  ),
                              DateChips(
                                assetIcon: TripperAssets.ksvTime,
                                date: "يوم ${trip.max ?? 0}",
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FavoriteButton(
                                isFavorite: trip.isFavorite,
                                onTap: () {
                                  tripViewmodel.favoriteTrip(favorableId: trip.id!);
                                },
                              ),
                              joinedList(context),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Sh.size12(),
          LayoutBuilder(
            builder: (context, con) {
              return ConstrainedBox(
                constraints: BoxConstraints(maxWidth: con.maxWidth * 0.85),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 10.w),
                  child: TripperText(
                      text: trip.description ?? '',
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                      textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).colorScheme.grey600.withOpacity(0.8),
                          )),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget joinedList(BuildContext context) {
    return Observer(builder: (context) {
      final reviews =
          tripViewmodel.tripsFuture.value?.singleWhere((element) => element.id == trip.id,orElse: ()=> Trip()).reviews ?? trip.reviews;

      return Row(
        children: [
          // Padding(
          //   padding: EdgeInsetsDirectional.only(end: 28.r),
          //   child: TripperText(
          //       text: "14+/24",
          //       textStyle: Theme.of(context).textTheme.caption?.copyWith(
          //             color: Theme.of(context).colorScheme.white,
          //           )),
          // ),
          JoinedListWidget(
            imagesUrl: reviews?.map((e) => e.user!.link!).toList() ?? [],
          )
        ],
      );
    });
  }

  List<String> get images {
    final list = <String>[];

    trip.stations?.forEach((element) {
      element.journeyPlaces?.forEach((element) {
        if (element.place?.media?[0].originalUrl != null) {
          list.add(element.place!.media![0].originalUrl!);
        }
      });
    });

    return list;
  }
}
