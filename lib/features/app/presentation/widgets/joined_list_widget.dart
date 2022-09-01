import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'image_view/cached_network_image.dart';

class JoinedListWidget extends StatelessWidget {
  const JoinedListWidget({Key? key, required this.imagesUrl}) : super(key: key);

  final List<String> imagesUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        for (int i = 0; i < imagesUrl.length; i++)
          joinedItem(
            context,
            i * 12,
            imagesUrl[i],
          )
      ],
    );
  }

  Widget joinedItem(BuildContext context, double? end, String imageUrl) {
    return PositionedDirectional(
      end: end == 0 ? null : end,
      child: Container(
        height: 25.h,
        width: 25.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.white,
          border: Border.all(color: Theme.of(context).colorScheme.white, width: 1.5.r),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: CachedNetworkImageProvider(imageUrl
                // ??
                // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoKJPxxwPeNvISnBbZsZHe887Ws0FnrL7o0w&usqp=CAU"
            ),
            fit: BoxFit.contain,
          ),
        ),
        // child: CachedNetworkImageView(
        //   url: imageUrl,
        //   boxFit: BoxFit.contain,
        //   errorWidget: Image.asset('avater-placeholder'.png),
        //   placeHolder: Image.asset('avater-placeholder'.png),
        // ),
      ),
    );
  }
}
