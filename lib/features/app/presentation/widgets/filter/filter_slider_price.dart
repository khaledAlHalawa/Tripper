import 'dart:developer';

import 'package:another_xlider/another_xlider.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:flutter/material.dart';

class TripperSlider extends StatelessWidget {
  final double minRange, maxRange;
  final double? step;
  final String? currency;

  double? minValue, maxValue;

  final Function(int, dynamic, dynamic) onDragging;
  final bool isEnabled;

  TripperSlider({
    required this.minRange,
    required this.maxRange,
    required this.onDragging,
    this.step,
    this.minValue,
    this.maxValue,
    this.currency,
    this.isEnabled = true,
    Key? key,
  }) : super(key: key);

  late ThemeData theme;
  late ColorScheme colorScheme;
  late TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    log("Slider value::: minRange :$minRange , maxRange :$maxRange , minValue: $minValue, maxValue: $maxValue");

    theme = Theme.of(context);
    colorScheme = theme.colorScheme;
    textTheme = theme.textTheme;
    return FlutterSlider(
      values: [minValue ??= minRange, maxValue ??= maxRange],
      rangeSlider: true,
      min: minRange,
      max: maxRange,
      step: FlutterSliderStep(step: step ?? 100),
      trackBar: FlutterSliderTrackBar(
        centralWidget: Padding(
          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
            Container(
              width: 9,
              height: 9,
              decoration: BoxDecoration(
                  color: isEnabled ? colorScheme.hint.withOpacity(0.4) : colorScheme.hint.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(45.0)),
            ),
            Container(
              width: 9,
              height: 9,
              decoration: BoxDecoration(
                  color: isEnabled ? colorScheme.hint.withOpacity(0.4) : colorScheme.hint.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(45.0)),
            ),
          ]),
        ),
        activeTrackBarHeight: 4,
        activeTrackBar: BoxDecoration(color: colorScheme.primary),
        activeDisabledTrackBarColor: colorScheme.primary.withOpacity(0.5),
        inactiveTrackBar: BoxDecoration(color: colorScheme.hint.withOpacity(0.4)),
        inactiveDisabledTrackBarColor: colorScheme.hint.withOpacity(0.2),
        inactiveTrackBarHeight: 4,
      ),
      rightHandler: FlutterSliderHandler(
        decoration: BoxDecoration(
          color: isEnabled ? colorScheme.primary : colorScheme.primary.withOpacity(0.5),
          borderRadius: BorderRadius.circular(90.0),
        ),
        child: Container(
          height: 13,
          width: 13,
          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        ),
      ),
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(
            color: isEnabled ? colorScheme.primary : colorScheme.primary.withOpacity(0.5),
            borderRadius: BorderRadius.circular(90.0)),
        child: Container(
          height: 13,
          width: 13,
          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        ),
      ),
      handlerHeight: 20,
      handlerWidth: 20,
      tooltip: FlutterSliderTooltip(disabled: true),
      // tooltip: FlutterSliderTooltip(
      //   alwaysShowTooltip: true,
      //   custom: (val) {
      //     return Transform.translate(
      //         offset: Offset(0, -30),
      //         child: _ShapedWidget(val.toInt(), currency ?? "USD" , isEnabled));
      //   },
      //   positionOffset: FlutterSliderTooltipPositionOffset(left: 10, right: 10),
      // ),
      touchSize: 50.0,
      rtl: true,
      minimumDistance: 10,
      onDragging: onDragging,
      disabled: !isEnabled,
    );
  }
}

class _ShapedWidget extends StatelessWidget {
  final int value;
  final String currency;
  final double padding = 4.0;
  final bool isEnabled;

  _ShapedWidget(this.value, this.currency, this.isEnabled);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -5),
      child: Align(
        alignment: Alignment.topLeft,
        child: Material(
            color: isEnabled
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primary.withOpacity(0.5),
            shape: _ShapedWidgetBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              padding: padding,
            ),
            elevation: 2.0,
            child: Container(
              height: 30,
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Center(
                  child: Text(
                "$value $currency",
                style: const TextStyle(color: Colors.white, fontSize: 14),
                maxLines: 1,
              )),
            )),
      ),
    );
  }
}

class _ShapedWidgetBorder extends RoundedRectangleBorder {
  const _ShapedWidgetBorder({
    required this.padding,
    side = BorderSide.none,
    borderRadius = BorderRadius.zero,
  }) : super(side: side, borderRadius: borderRadius);
  final double padding;

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(10, 15)
      ..lineTo(rect.width / 2 + 20, 10)
      ..lineTo(rect.width / 2 - 2, 36)
      ..addRRect(borderRadius
          .resolve(textDirection)
          .toRRect(Rect.fromLTWH(rect.left, rect.top, rect.width, rect.height + 0.3)));
  }
}
