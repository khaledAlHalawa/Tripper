part of 'tripper_text_field.dart';

///[TextStyle] section,
/// this custom [TextStyle] for [InputDecoration].

TextStyle? _kHintTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.hint);

TextStyle? _kErrorTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.error);

///[InputBorder] section
/// this custom [InputBorder]s for [InputDecoration].

const InputBorder _kNormalBorder = InputBorder.none;

InputBorder _kOutlineBorder(BuildContext context) => OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBr12),
  borderSide: BorderSide(color: context.theme.colorScheme.background),
);

InputBorder _kOutlineFocusedBorderBorder (BuildContext context) => OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBr12),
  borderSide: BorderSide(color:Theme.of(context).colorScheme.hint),
);

InputBorder _kOutlineErrorBorder (BuildContext context) => OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBr12),
  borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
);

InputBorder _kOutlineErrorBorder2 () => InputBorder.none;


///[InputDecoration] section
///

InputDecoration normalInputDecoration(BuildContext context) => InputDecoration(
      filled: true,
      fillColor: Theme.of(context).colorScheme.background,
      border: _kNormalBorder,
      hintStyle: _kHintTextStyle(context),
      errorStyle: _kErrorTextStyle(context),
    );

InputDecoration outLineInputDecoration (BuildContext context) =>  InputDecoration(
  filled: true,
  fillColor: Theme.of(context).colorScheme.background,
  border: InputBorder.none,
  enabledBorder: _kOutlineBorder(context),
  disabledBorder: _kOutlineBorder(context),
  focusedBorder: _kOutlineFocusedBorderBorder(context),
  errorBorder: _kOutlineErrorBorder2(),
  errorStyle: _kErrorTextStyle(context),
  hintStyle: _kHintTextStyle(context),
);

BoxConstraints constraints = BoxConstraints();

///types of [InputDecoration] in app.
///

enum InputDecorationType {
  normal,
  outline,
  outlinePassword,
}

///this extension to add [decoration] method for
///get [InputDecoration] from [InputDecorationType]s.

extension GetDecoration on InputDecorationType {
  InputDecoration decoration({
    required Widget passwordSuffix,
    required BuildContext context,
    InputDecorationParam? decorationParam,
  }) {
    switch (this) {
      case InputDecorationType.normal:
        return normalInputDecoration(context).copyWith(
          hintText: decorationParam?.hintText?.tr(),
          icon: decorationParam?.icon,
          prefix: decorationParam?.prefix,
          prefixIcon: decorationParam?.prefixIcon,
          suffix: decorationParam?.suffix,
          suffixIcon: decorationParam?.suffixIcon,
          suffixText: decorationParam?.suffixText,
          errorText: decorationParam?.errorText,
          contentPadding: decorationParam?.contentPadding,
          constraints: decorationParam?.constraints ?? constraints,
          isDense: decorationParam?.isDense ?? true,
        );
      case InputDecorationType.outline:
        return outLineInputDecoration(context).copyWith(
          hintText: decorationParam?.hintText?.tr(),
          prefixIcon: decorationParam?.prefixIcon,
          icon: decorationParam?.icon,
          prefix: decorationParam?.prefix,
          suffix: decorationParam?.suffix,
          suffixIcon: decorationParam?.suffixIcon,
          suffixText: decorationParam?.suffixText,
          errorText: decorationParam?.errorText,
          contentPadding: decorationParam?.contentPadding,
          constraints: decorationParam?.constraints ?? constraints,
          isDense: decorationParam?.isDense ?? true,
        );
      case InputDecorationType.outlinePassword:
        return outLineInputDecoration(context).copyWith(
          prefixIcon: decorationParam?.prefixIcon,
          hintText: decorationParam?.hintText?.tr(),
          icon: decorationParam?.icon,
          prefix: decorationParam?.prefix,
          errorText: decorationParam?.errorText,
          suffixIcon: passwordSuffix,
          contentPadding: decorationParam?.contentPadding,
          constraints: decorationParam?.constraints ?? constraints,
          isDense: decorationParam?.isDense ?? true,
        );
    }
  }
}

///[InputDecorationParam]
/// this class to pass parameters that can vary from  [InputDecoration] to another.

class InputDecorationParam {
  final String? hintText;
  final Widget? icon;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? suffixText;
  final String? errorText;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isDense;
  final BoxConstraints? constraints;

  InputDecorationParam({
    this.hintText,
    this.icon,
    this.prefix,
    this.suffix,
    this.suffixIcon,
    this.suffixText,
    this.errorText,
    this.prefixIcon,
    this.contentPadding,
    this.isDense,
    this.constraints,
  });
}
