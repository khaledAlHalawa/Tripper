import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/joined_list_widget.dart';
import 'package:app/features/app/presentation/widgets/location_chips.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../../../../common/constant/configuration/global.dart';
import '../../../../common/helper/show_message.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../../app/presentation/widgets/sized_boxes/sizedbox.dart';
import '../../domain/entities/place.dart';
import '../manager/place_viewmodel.dart';

class PlaceCard extends ConsumerWidget {
  PlaceCard({Key? key,required this.place}) : super(key: key);

  final Place place;
  late PlaceViewmodel placeViewmodel;
  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    placeViewmodel = ref.watch(AppProvidersContainer.placeProvider);
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(10).r,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.hint.withOpacity(0.3),
              blurRadius: 10,
            ),
          ]),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10).r,
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                    place.medias != null && (place.medias?.length ?? 0) != 0 ? (place.medias?[0].originalUrl ?? '') : ''),
                fit: BoxFit.cover,
              ),
            ),
            height: 215.h,
            child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Colors.black54,
                        Colors.transparent,
                      ],
                      begin: AlignmentDirectional.bottomCenter,
                      end: AlignmentDirectional.topCenter,
                      stops: [0.0, 0.8]),
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.all(10.r),
                  child: Column(
                    children: [
                      Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: LocationChips(location: "${place.country}، ${place.city}")),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: place.name,
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                      color: Theme.of(context).colorScheme.white,
                                    ),
                              ),
                              TextSpan(
                                text: "(${place.placeType})",
                                style: Theme.of(context).textTheme.caption?.copyWith(
                                      color: Theme.of(context).colorScheme.white.withOpacity(0.6),
                                    ),
                              ),
                            ]),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(end: 28.r),
                                child: TripperText(
                                    text: "8k+",
                                    textStyle: Theme.of(context).textTheme.caption?.copyWith(
                                          color: Theme.of(context).colorScheme.grey100,
                                        )),
                              ),
                              JoinedListWidget(imagesUrl: usersImage..shuffle()),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          Sh.size12(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    favoriteWidget(context),
                    Sw.size16(),
                    commentWidget(context),
                  ],
                ),
                if(place.review != null)
                reviewWidget(context),
              ],
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  Widget reviewWidget(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: Theme.of(context).colorScheme.yellow,
        ),
        Sw.size4(),
        TripperText(
            text: '${double.parse(place.review.toString())}',
            textStyle: Theme.of(context).textTheme.caption?.copyWith(
                  color: Theme.of(context).colorScheme.grey300,
                )),
      ],
    );
  }

  Widget commentWidget(BuildContext context) {
    return Row(
      children: [
        SvgPictureView(TripperAssets.ksvComment),
        Sw.size4(),
        TripperText(
          text: place.friendlyCommentCount,
          textStyle: Theme.of(context).textTheme.bodyText2?.b.copyWith(
                color: Theme.of(context).colorScheme.grey300,
              ),
        ),
      ],
    );
  }

  Widget favoriteWidget(BuildContext context) {
    return Row(
      children: [
        Observer(
          builder: (context) {
            final list = placeViewmodel.placeFuture.value?.where((element) => element.id == place.id).toList();
            final isFavorite = list != null && (list.length ) != 0 ? list.first.isFavorite :  false;

            return InkWell(
              onTap: (){
                if(!_prefsRepository.hasUser) {
                  showMessage('لا يمكن إضافة العنصر للمفضلة سجل دخول للتطبيق أولاً',hasError: true);
                  return ;
                }
                placeViewmodel.favoritePlace(favorableId: place.id!);
              },
              child: Icon(
                (isFavorite ) ? Icons.favorite_rounded  : Icons.favorite_outline_rounded,
                size: 20,
                color : (isFavorite ) ? Colors.red : Theme.of(context).colorScheme.grey300,
              ),
            );
          }
        ),
        Sw.size4(),
        TripperText(
          text: place.friendlyLikeCount,
          textStyle: Theme.of(context).textTheme.bodyText2?.b.copyWith(
            color: Theme.of(context).colorScheme.grey300,
          ),
        ),
      ],
    );
  }
}
