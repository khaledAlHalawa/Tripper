import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/presentation/widgets/tripper_shimmer_loader.dart';
import '../../domain/entities/city.dart';

class CityCard extends StatelessWidget {
  const CityCard({Key? key, required this.city}) : super(key: key);

  final City? city;

  @override
  Widget build(BuildContext context) {
    final image = city?.medias?[0].originalUrl;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10).r,
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            image ?? 'https://upload.wikimedia.org/wikipedia/commons/5/54/Citadel_of_Aleppo.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: 248.w,
      height: 150.h,
      child: Container(
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
        child: Align(
            alignment: const AlignmentDirectional(-0.85, 0.7),
            child: TripperText(
              text: "مدينة ${city?.name ?? ""}",
              textStyle: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.white),
            )),
      ),
    );
  }
}
