import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCTextField extends StatelessWidget {
  const CCTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.label,
    this.hintText,
    this.helperText,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.onTap,
    this.autofillHints,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.textCapitalization = TextCapitalization.none,
    this.contentPadding,
    this.autovalidateMode,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? label;
  final String? hintText;
  final String? helperText;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final GestureTapCallback? onTap;
  final Iterable<String>? autofillHints;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final TextCapitalization textCapitalization;
  final EdgeInsetsGeometry? contentPadding;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    final colors = context.ccColor;
    final borderRadius = BorderRadius.circular(CCBorderRadius.sm);
    OutlineInputBorder _outline(Color color, {double width = 1}) =>
        OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: color, width: width),
        );

    final outlineColor = colors.outline.neutral.main;
    final disabledOutlineColor = colors.outline.neutral.subtle;
    final errorColor = colors.background.solid.error;
    final activeColor = colors.action.primary.active;

    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      onTap: onTap,
      autofillHints: autofillHints,
      obscureText: obscureText,
      enabled: enabled,
      readOnly: readOnly,
      minLines: obscureText ? 1 : minLines,
      maxLines: obscureText ? 1 : maxLines,
      maxLength: maxLength,
      textCapitalization: textCapitalization,
      autovalidateMode: autovalidateMode,
      style: CCTypography.body(
        color: colors.text.neutral.main,
      ),
      cursorColor: activeColor,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        helperText: helperText,
        prefixIcon: prefix,
        suffixIcon: suffix,
        filled: true,
        fillColor: colors.background.neutral.subtle,
        labelStyle: CCTypography.bodySm(
          color: colors.text.neutral.subtle,
        ),
        hintStyle: CCTypography.bodySm(
          color: colors.text.neutral.subtle,
        ),
        helperStyle: CCTypography.bodyXs(
          color: colors.text.neutral.subtle,
        ),
        errorStyle: CCTypography.bodyXs(
          color: colors.text.color.error,
        ),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: CCSize.size16.w,
              vertical: CCSize.size12.h,
            ),
        enabledBorder: _outline(outlineColor),
        focusedBorder: _outline(activeColor, width: 2),
        disabledBorder: _outline(disabledOutlineColor),
        errorBorder: _outline(errorColor),
        focusedErrorBorder: _outline(errorColor, width: 2),
      ),
    );
  }
}
