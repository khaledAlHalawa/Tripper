import 'package:app/features/app/presentation/widgets/sized_boxes/sizedbox.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/num.dart';
import 'package:app/core/utils/extensions/theme_provider.dart';
import '../../../../generated/locale_keys.g.dart';
import 'loading_indicator.dart';
import 'tripper_elvated_button.dart';

class TripperTextButton extends StatefulWidget {
  const TripperTextButton({
    Key? key,
    this.onPressed,
    this.onDisabled,
    this.child,
    this.text,
    this.style,
    this.isLoading = false,
    this.tripperButtonStyle,
  }) : super(key: key);

  final Function()? onPressed;
  final Function()? onDisabled;
  final Widget? child;
  final String? text;
  final bool isLoading;
  final TripperButtonStyle? tripperButtonStyle;
  final ButtonStyle? style;
  @override
  State<TripperTextButton> createState() => _TripperTextButtonState();
}

class _TripperTextButtonState extends ThemeProvider<TripperTextButton> {
  TextButtonThemeData? _buttonTheme;

  bool get absorbing => widget.onDisabled != null ? false : widget.isLoading;

  CrossFadeState get crossFadeState => widget.isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst;

  Function()? get onTap => widget.isLoading ? widget.onDisabled : widget.onPressed;

  @override
  Widget build(BuildContext context) {
    assert(() {
      if (widget.text == null && widget.child == null) {
        throw FlutterError("Can't be both text and child is null");
      }
      if (widget.style != null && widget.tripperButtonStyle != null) {
        throw FlutterError("Can't be pass both style and tripperButtonStyle");
      }
      return true;
    }());

    setButtonStyle();

    return AbsorbPointer(
      absorbing: absorbing,
      child: TextButton(
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
            Text(LocaleKeys.global_please_wait.tr()),
            if (widget.isLoading) ...{
              Sw.size8(),
              const LoadingIndicator(),
              Sw.size4(),
            },
          ],
        ),
      );

  Widget get firstChild => FittedBox(
          child: TripperText(
        text: widget.text!.tr(),
        textStyle: null,
      ));

  void setButtonStyle(){

    final defaultTextTheme = theme.textButtonTheme;

    final secondaryTextTheme = TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: defaultTextTheme.style?.shape?.resolve({}),
        onPrimary: colorScheme.grey,
      ),
    );

    final loadingTextTheme = TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: defaultTextTheme.style?.shape?.resolve({}),
        onPrimary: colorScheme.outline,
      ),
    );

    _buttonTheme = widget.isLoading
        ? loadingTextTheme
        : widget.tripperButtonStyle == TripperButtonStyle.secondary
            ? secondaryTextTheme
            : defaultTextTheme;
  }
}
