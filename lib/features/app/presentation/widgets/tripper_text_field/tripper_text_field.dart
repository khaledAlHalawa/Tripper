import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/common/constant/constant.dart';
import 'package:app/core/utils/extensions/build_context.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import '../../../../../core/utils/extensions/theme_provider.dart';
import '../image_view/svg_view.dart';
import 'package:easy_localization/easy_localization.dart' as easy;
part 'input_decoration.dart';

class TripperTextField extends StatefulWidget {
  final TextEditingController? controller;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final void Function(String val)? onChange;
  final void Function(String val)? onFieldSubmitted;
  final void Function(String? val)? onSaved;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool? enabled;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextDirection? textDirection;
  final FormFieldValidator? validator;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final FocusNode? focusNode;
  final AutovalidateMode? autoValidateMode;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final String? initialValue;
  final Brightness? keyboardAppearance;
  final TextAlignVertical? textAlignVertical;
  final ToolbarOptions? toolbarOptions;
  final InputDecorationParam? decorationParam;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final EdgeInsets scrollPadding;
  final bool expands;
  final bool readOnly;
  final bool autocorrect;
  final String obscuringCharacter;
  final InputDecorationType inputDecorationType;
  final String? titleField;
  final bool showLength;
  final bool obscure;

  const TripperTextField({
    Key? key,
    this.controller,
    this.onTap,
    this.onEditingComplete,
    this.onChange,
    this.onFieldSubmitted,
    this.onSaved,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.enabled,
    this.textInputType,
    this.textInputAction,
    this.textDirection,
    this.validator,
    this.maxLengthEnforcement,
    this.focusNode,
    this.autoValidateMode,
    this.scrollPhysics,
    this.scrollController,
    this.initialValue,
    this.keyboardAppearance,
    this.textAlignVertical,
    this.toolbarOptions,
    this.decorationParam,
    this.obscuringCharacter = "•",
    this.expands = false,
    this.readOnly = false,
    this.autocorrect = true,
    this.showLength = false,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
    this.inputDecorationType = InputDecorationType.normal,
    this.titleField,
    this.obscure = false,
  }) : super(key: key);

  @override
  State<TripperTextField> createState() => _TripperTextFieldState();
}

class _TripperTextFieldState extends ThemeProvider<TripperTextField> {
  late ValueNotifier<bool> _obscureTextNotifier;

  @override
  void initState() {
    _obscureTextNotifier = ValueNotifier(widget.inputDecorationType == InputDecorationType.outlinePassword);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kBr12)),
      elevation: 3.0,
      shadowColor: colorScheme.shadow,
      color: colorScheme.background,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kBr12),
        child: ValueListenableBuilder<bool>(
          valueListenable: _obscureTextNotifier,
          builder: (_, obscureText, child) => TextFormField(
            controller: widget.controller,
            onTap: widget.onTap,
            onChanged: widget.onChange,
            onFieldSubmitted: widget.onFieldSubmitted,
            onEditingComplete: widget.onEditingComplete,
            onSaved: widget.onSaved,
            validator: widget.validator,
            maxLines: obscureText ? 1 : widget.maxLines,
            minLines: obscureText ? 1 : widget.minLines,
            maxLength: widget.showLength ? widget.maxLength : null,
            textAlign: widget.textAlign,
            enabled: widget.enabled,
            keyboardType: widget.textInputType,
            textInputAction: widget.textInputAction,
            textDirection: widget.textDirection,
            scrollPadding: widget.scrollPadding,
            expands: widget.expands,
            maxLengthEnforcement: widget.maxLengthEnforcement,
            focusNode: widget.focusNode,
            obscureText: obscureText,
            obscuringCharacter: widget.obscuringCharacter,
            autovalidateMode: widget.autoValidateMode,
            readOnly: widget.readOnly,
            scrollPhysics: widget.scrollPhysics,
            scrollController: widget.scrollController,
            autocorrect: widget.autocorrect,
            cursorColor: colorScheme.hint,
            initialValue: widget.initialValue,
            keyboardAppearance: widget.keyboardAppearance,
            textAlignVertical: widget.textAlignVertical,
            textCapitalization: widget.textCapitalization,
            toolbarOptions: widget.toolbarOptions,
            inputFormatters: [
              if (widget.maxLength != null) LengthLimitingTextInputFormatter(widget.maxLength),
              if (widget.textInputType == TextInputType.phone || widget.textInputType == TextInputType.number)
                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
            ],
            style: textTheme.bodyText2?.copyWith(color: colorScheme.onBackground),
            decoration: widget.inputDecorationType.decoration(
              passwordSuffix: suffixIcon(),
              context: context,
              decorationParam: widget.decorationParam,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _obscureTextNotifier.dispose();
    super.dispose();
  }

  Widget suffixIcon() {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: _EyeIcon(notifier: _obscureTextNotifier),
    );
  }
}

class _EyeIcon extends StatelessWidget {
  final ValueNotifier<bool> notifier;
  const _EyeIcon({Key? key, required this.notifier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ValueListenableBuilder<bool>(
      valueListenable: notifier,
      builder: (_, obscureText, child) => GestureDetector(
        onTap: () {
          notifier.value = !obscureText;
        },
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Transform.scale(
              scale: 0.7,
              child: SvgPictureView(
                TripperAssets.ksvEye,
                color: theme.colorScheme.grey300,
                fit: BoxFit.scaleDown,
              ),
            ),
            if (obscureText)
              Positioned(
                right: 11,
                child: Transform.rotate(
                  angle: 0.6,
                  child: Container(
                    height: 15,
                    width: 2,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.grey300,
                        border: Border.all(color: theme.colorScheme.background, width: 0.3)),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
