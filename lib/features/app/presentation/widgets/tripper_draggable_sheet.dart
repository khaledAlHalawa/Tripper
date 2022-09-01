import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/build_context.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/responsive_padding.dart';
import '../pages/tripper_app.dart';

class TripperDraggableSheet<T> extends StatelessWidget {
  const TripperDraggableSheet._({
    Key? key,
    required this.builder,
    this.addHeader = true,
    this.needSearchInput = false,
    this.title,
    this.onClose,
    this.minChildSize,
    this.maxChildSize,
    this.initialChildSize,
  }) : super(key: key);

  final String? title;
  final bool addHeader;
  final ValueChanged<BuildContext>? onClose;
  final ScrollableWidgetBuilder builder;
  final double? minChildSize;
  final double? maxChildSize;
  final double? initialChildSize;
  final bool needSearchInput;

  static Future<T?> show<T>({
    required BuildContext? context,
    required ScrollableWidgetBuilder builder,
    String? title,
    bool addHeader = true,
    ValueChanged<BuildContext>? onClose,
    final double? minChildSize,
    final double? maxChildSize,
    final double? initialChildSize,
  }) =>
      showModalBottomSheet<T>(
        context: context ?? TripperApp.navKey.currentContext!,
        enableDrag: true,
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: (context ?? TripperApp.navKey.currentContext!).theme.colorScheme.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(18.0.r))),
        builder: (_) => TripperDraggableSheet._(
          builder: builder,
          title: title,
          addHeader: addHeader,
          onClose: onClose,
          initialChildSize: initialChildSize,
          maxChildSize: maxChildSize,
          minChildSize: minChildSize,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (addHeader)
          BottomSheetTitleHeader(
            title: title,
            onClose: onClose,
            needSearchInput: needSearchInput,
          ),
        Flexible(
          child: DraggableScrollableSheet(
            minChildSize: minChildSize ?? 0.4,
            maxChildSize: maxChildSize ?? 0.97,
            initialChildSize: initialChildSize ?? 0.6,
            expand: false,
            builder: builder,
          ),
        ),
      ],
    );
  }
}

class BottomSheetTitleHeader extends StatelessWidget {
  const BottomSheetTitleHeader({
    Key? key,
    this.title,
    this.onClose,
    required this.needSearchInput,
  }) : super(key: key);

  final String? title;
  final ValueChanged<BuildContext>? onClose;
  final bool needSearchInput;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HWEdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: HWEdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (title != null)
                  TripperText(
                    text: title!,
                    textStyle: Theme.of(context).textTheme.button,
                  ),
                GestureDetector(
                  onTap: () {
                    if (onClose == null) {
                      Navigator.pop(context);
                    }
                    onClose?.call(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(7).r,
                    ),
                    padding: HWEdgeInsets.all(5),
                    child: Icon(Icons.close, color: Theme.of(context).colorScheme.grey, size: 20),
                  ),
                ),
              ],
            ),
          ),
          if (needSearchInput)
            ...{
              20.verticalSpace,
              TripperTextField(
                inputDecorationType: InputDecorationType.normal,
                controller: TextEditingController(),
                decorationParam: InputDecorationParam(
                  hintText: "ابحث عن...",
                  // icon: Icon(Icons.search),
                  contentPadding: HWEdgeInsetsDirectional.only(top: 18, end: 10),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      22.horizontalSpace,
                      const Icon(Icons.search),
                      Container(
                        width: 1,
                        height: 20,
                        margin: HWEdgeInsets.symmetric(vertical: 14, horizontal: 7),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.grey200.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5)),

                        // height: double.infinity,
                      ),
                    ],
                  ),
                  isDense: false,
                ),
                maxLines: 1,
              ),
            }
        ],
      ),
    );
  }
}
