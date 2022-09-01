

import 'dart:io';

import 'package:app/common/helper/show_message.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageHandler{
  static Future<File?> pickImage(ImageSource source) async {
    final isGranted = await _requestPermission(isGallery: source == ImageSource.gallery);
    if (isGranted) {
      final ImagePicker picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: source);
      if (pickedFile == null) {
        return null;
      } else {
        return File(pickedFile.path);
      }
    } else {
      showMessage('Permission Denied!!');
      return null;
    }
  }

  static Future<bool> _requestPermission({required bool isGallery}) async {
    if (isGallery) {
      Map<Permission, PermissionStatus> status;
      status = await [Permission.storage, Permission.photos].request();
      final isAccessDenied = status.values.any((permissionStatus) => permissionStatus.isDenied);
      return !isAccessDenied;
    } else {
      PermissionStatus status = await Permission.camera.request();
      return status.isGranted;
    }
  }
}