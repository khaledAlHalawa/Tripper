import 'dart:io';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../common/helper/iamge_helper.dart';

typedef PickFileCallback = Function(BuildContext context,File? file);

class PickImageBottomSheet extends StatefulWidget {
  const PickImageBottomSheet._({Key? key, required this.onPickFile}) : super(key: key);

  static Future<T?> showBottomSheet<T>({
    required BuildContext context,
    required PickFileCallback onPickFile,
  }) {
    return showModalBottomSheet(
      context: context,
      builder: (_) => PickImageBottomSheet._(onPickFile: onPickFile),
      backgroundColor: Colors.transparent,
    );
  }

  final PickFileCallback onPickFile;

  @override
  State<PickImageBottomSheet> createState() => _PickImageBottomSheetState();
}

class _PickImageBottomSheetState extends State<PickImageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      message: TripperText(
        text: "اختر الصورة من:",
        textStyle: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.grey600),
      ),
      actions: [
        imageSourceWidget(
          onTap: () async => await onSelectSource(context, ImageSource.camera),
          text: "الكاميرا",
          iconData: Icons.camera,
        ),
        imageSourceWidget(
          onTap: () async => await onSelectSource(context, ImageSource.gallery),
          text: "الاستديو",
          iconData: Icons.image_rounded,
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.pop(context);
        },
        isDestructiveAction: true,
        child: Text(
          'إالغاء',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }

  Future<void> onSelectSource(BuildContext context, ImageSource source) async {
    final file = await ImageHandler.pickImage(source);
    if(!mounted) return;
    widget.onPickFile(context,file);
  }

  Widget imageSourceWidget({
    required VoidCallback onTap,
    required String text,
    required IconData iconData,
  }) {
    return CupertinoActionSheetAction(
      onPressed: onTap,
      child: Row(
        children: [
          Icon(iconData, color: Theme.of(context).colorScheme.primary),
          16.horizontalSpace,
          TripperText(
            text: text,
            textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.grey600),
          ),
        ],
      ),
    );
  }
}
