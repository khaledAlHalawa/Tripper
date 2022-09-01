import 'package:app/features/app/presentation/widgets/sized_boxes/sizedbox.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:app/core/utils/extensions/num.dart';
import 'package:app/core/utils/extensions/theme_provider.dart';
import 'loading_indicator.dart';

enum TripperButtonStyle {
  primary,
  secondary,
}

class TripperElevatedButton extends StatefulWidget {
  const TripperElevatedButton({
    Key? key,
    this.onPressed,
    this.onDisabled,
    this.child,
    this.text,
    this.isLoading = false,
    this.tripperButtonStyle,
    this.style,
  }) : super(key: key);

  final Function()? onPressed;
  final Function()? onDisabled;
  final Widget? child;
  final String? text;
  final bool isLoading;
  final TripperButtonStyle? tripperButtonStyle;
  final ButtonStyle? style;

  @override
  State<TripperElevatedButton> createState() => _TripperElevatedButtonState();
}

class _TripperElevatedButtonState extends ThemeProvider<TripperElevatedButton> {
  ElevatedButtonThemeData? _buttonTheme;

  bool get absorbing => widget.onDisabled != null ? false : widget.isLoading;

  CrossFadeState get crossFadeState => widget.isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst;

  Function()? get onTap => widget.isLoading ? widget.onDisabled : widget.onPressed;

  @override
  Widget build(BuildContext context) {
    assert(() {
      if (widget.text == null && widget.child == null) {
        throw FlutterError("Can't be both text and child is null");
      }
      if(widget.style != null && widget.tripperButtonStyle != null){
        throw FlutterError("Can't be pass both style and tripperButtonStyle");
      }
      return true;
    }());

    setButtonStyle();

    return AbsorbPointer(
      absorbing: absorbing,
      child: ElevatedButton(
        onPressed: onTap,
        style: widget.style ?? _buttonTheme?.style,
        child: widget.child ??
            AnimatedCrossFade(
              firstChild: firstChild,
              secondChild: secondChild,
              duration: 500.milliseconds,
              crossFadeState: crossFadeState,
            ),
      ),
    );
  }

  Widget get secondChild => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TripperText(text: LocaleKeys.global_please_wait, textStyle: null),
            if (widget.isLoading) ...{
              Sw.size8(),
              const LoadingIndicator(),
              Sw.size4(),
            },
          ],
        ),
      );

  Widget get firstChild => FittedBox(child: TripperText(text: widget.text!, textStyle: null));


  void setButtonStyle(){
    final defaultElevatedTheme = theme.elevatedButtonTheme;

    final secondaryElevatedTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: defaultElevatedTheme.style?.shape?.resolve({}),
          primary: colorScheme.onPrimary,
          onPrimary: colorScheme.primary,
          surfaceTintColor: colorScheme.onPrimary,
          elevation: 8.0,
          shadowColor: colorScheme.outline.withOpacity(0.4)
      ),
    );

    final loadingElevatedTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: defaultElevatedTheme.style?.shape?.resolve({}),
        primary: colorScheme.surfaceVariant,
        onPrimary: colorScheme.outline,
      ),
    );

    _buttonTheme = widget.isLoading
        ? loadingElevatedTheme
        : widget.tripperButtonStyle == TripperButtonStyle.secondary
        ? secondaryElevatedTheme
        : defaultElevatedTheme;
  }
}
