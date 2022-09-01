import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewer extends StatelessWidget {
  const PhotoViewer({
    Key? key,
    this.imageUrl,
    this.file,
  }) : super(key: key);

  final String? imageUrl;
  final File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded ,color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: imageUrl != null
          ? PhotoView(
              imageProvider: CachedNetworkImageProvider(imageUrl!),
              heroAttributes: PhotoViewHeroAttributes(tag: imageUrl!),
            )
          : PhotoView(
              imageProvider: FileImage(file!),
              heroAttributes: PhotoViewHeroAttributes(tag: file!.path),
            ),
    );
  }
}
