import 'dart:io';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/photo_viewer.dart';
import 'package:app/features/profile/presentation/pages/edit_profile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages/tripper_app.dart';
import 'image_view/svg_view.dart';

enum ImageComponentMode { picker, normal, upload, reUpload, loading }

extension ImageComponentModeExt on ImageComponentMode {
  Widget icon(BuildContext context, VoidCallback? onTap) {
    switch (this) {
      case ImageComponentMode.picker:
        return _CircleImageButton(
          shapeColor: Theme.of(context).colorScheme.background,
          iconData: Icons.camera_alt_rounded,
          iconColor: Theme.of(context).colorScheme.yellow,
          onTap: onTap,
        );
      case ImageComponentMode.normal:
        return _CircleImageButton(
          shapeColor: Theme.of(context).colorScheme.primary,
          iconData: Icons.edit,
          iconColor: Theme.of(context).colorScheme.onPrimary,
          onTap: onTap,
        );
      case ImageComponentMode.upload:
        return _CircleImageButton(
          shapeColor: Theme.of(context).colorScheme.primary,
          iconData: Icons.save,
          iconColor: Theme.of(context).colorScheme.onPrimary,
          onTap: onTap,
        );
      case ImageComponentMode.loading:
        return const SizedBox();
      case ImageComponentMode.reUpload:
        return _CircleImageButton(
          shapeColor: Theme.of(context).colorScheme.primary,
          iconData: Icons.refresh,
          iconColor: Theme.of(context).colorScheme.onPrimary,
          onTap: onTap,
        );
    }
  }
}

class TripperImageComponent extends StatefulWidget {
  const TripperImageComponent(
      {Key? key,
      required this.imageUrl,
      required this.mode,
      this.onTap,
      this.image,
      this.onUpdateImage,
      this.isUploadedNewImage = false})
      : super(key: key);

  final String? imageUrl;
  final ImageComponentMode mode;
  final VoidCallback? onTap;
  final ValueChanged<File>? onUpdateImage;
  final File? image;
  final bool isUploadedNewImage;

  @override
  State<TripperImageComponent> createState() => _TripperImageComponentState();
}

class _TripperImageComponentState extends State<TripperImageComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (widget.imageUrl != null)
          GestureDetector(
            onTap: () {
              TripperApp.navKey.currentState!.push(
                AnimatedRoute(PhotoViewer(imageUrl: widget.imageUrl)),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: CachedNetworkImage(
                imageUrl: widget.imageUrl!,
                errorWidget: (_, url, error) => Image.asset('avater-placeholder'.png),
                placeholder: (_, url) => Image.asset('avater-placeholder'.png),
                width: 150.r,
                height: 150.r,
                fit: BoxFit.fill,
              ),
            ),
          )
        else
          GestureDetector(
            onTap: () {
              TripperApp.navKey.currentState!.push(
                AnimatedRoute(PhotoViewer(file: widget.image)),
              );
            },
            child: Container(
              width: 150.r,
              height: 150.r,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: FileImage(widget.image!),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        PositionedDirectional(
          start: 10.w,
          bottom: 0,
          child: widget.mode.icon(
              context,
              (widget.image != null && !widget.isUploadedNewImage)
                  ? () => widget.onUpdateImage!(widget.image!)
                  : widget.onTap),
        )
      ],
    );
  }
}

class _CircleImageButton extends StatelessWidget {
  const _CircleImageButton({
    Key? key,
    this.onTap,
    required this.shapeColor,
    required this.iconData,
    required this.iconColor,
  }) : super(key: key);

  final VoidCallback? onTap;
  final Color shapeColor;
  final IconData iconData;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 45.r,
        width: 45.r,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90).r),
          surfaceTintColor: shapeColor,
          color: shapeColor,
          elevation: 4,
          margin: EdgeInsets.zero,
          child: Icon(
            iconData,
            color: iconColor,
            size: 16,
          ),
        ),
      ),
    );
  }
}
