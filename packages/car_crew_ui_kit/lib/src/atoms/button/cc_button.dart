import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class CCButton extends StatelessWidget {
  const CCButton({
    required this.label,
    this.size = CCButtonSize.md,
    this.onPressed,
    this.variant = CCButtonVariant.primary,
    this.type = CCButtonType.filled,
    this.enable = true,
    this.debounce = true,
    this.wrap = true,
    this.leading,
    this.trailing,
    super.key,
  });

  factory CCButton.primary({
    required String label,
    CCButtonType type = CCButtonType.filled,
    bool enable = true,
    Future<void> Function()? onPressed,
    CCButtonSize size = CCButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      CCButton(
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  factory CCButton.secondary({
    required String label,
    CCButtonType type = CCButtonType.outline,
    bool enable = true,
    Future<void> Function()? onPressed,
    CCButtonSize size = CCButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      CCButton(
        variant: CCButtonVariant.secondary,
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  factory CCButton.tertiary({
    required String label,
    CCButtonType type = CCButtonType.filled,
    bool enable = true,
    Future<void> Function()? onPressed,
    CCButtonSize size = CCButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      CCButton(
        variant: CCButtonVariant.tertiary,
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  factory CCButton.danger({
    required String label,
    CCButtonType type = CCButtonType.filled,
    bool enable = true,
    Future<void> Function()? onPressed,
    CCButtonSize size = CCButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      CCButton(
        variant: CCButtonVariant.danger,
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  final bool enable;
  final String label;
  final CCButtonSize size;
  final CCButtonVariant variant;
  final Future<void> Function()? onPressed;
  final CCButtonType type;
  final Widget? leading;
  final Widget? trailing;
  final bool debounce;
  final bool wrap;

  @override
  Widget build(BuildContext context) => debounce
      ? TapDebouncer(
          onTap: onPressed,
          cooldown: const Duration(milliseconds: 500),
          waitBuilder: (context, child) => _ButtonWidget(
            enable: enable,
            label: label,
            size: size,
            variant: variant,
            type: type,
            leading: SpinKitFadingCircle(
              size: size.data.textStyle.fontSize ?? 20.sp,
              color: type.data(context).disabledFgColor,
            ),
            wrap: wrap,
          ),
          builder: (context, onTap) => _ButtonWidget(
            enable: enable,
            label: label,
            size: size,
            variant: variant,
            type: type,
            onPressed: onTap,
            leading: leading,
            trailing: trailing,
            wrap: wrap,
          ),
        )
      : _ButtonWidget(
          enable: enable,
          label: label,
          size: size,
          variant: variant,
          type: type,
          onPressed: onPressed,
          leading: leading,
          trailing: trailing,
          wrap: wrap,
        );
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget({
    required this.enable,
    required this.label,
    required this.size,
    required this.variant,
    required this.type,
    this.onPressed,
    this.leading,
    this.trailing,
    this.wrap = true,
  });

  final bool enable;
  final String label;
  final CCButtonSize size;
  final CCButtonVariant variant;
  final Future<void> Function()? onPressed;
  final CCButtonType type;
  final Widget? leading;
  final Widget? trailing;
  final bool wrap;

  @override
  Widget build(BuildContext context) {
    final child = SizedBox(
      height: size.data.height,
      child: MaterialButton(
        minWidth: size.data.width,
        onPressed: enable ? onPressed : null,
        elevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        height: size.data.height,
        color: _backgroundColor(context),
        disabledColor: type.data(context).disabledBgColor,
        disabledTextColor: type.data(context).disabledFgColor,
        focusColor: Colors.transparent,
        textColor: _textColor(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.data.borderRadius),
          side: BorderSide(
            color: _borderColor(context),
            width: 1.sp,
          ),
        ),
        child: Padding(
          padding: size.data.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leading != null) ...[
                leading!,
                 Gap(CCSize.size8.w),
              ],
              Flexible(
                child: Text(
                  label,
                  style: size.data.textStyle,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (trailing != null) ...[
                 Gap(CCSize.size8.w),
                trailing!,
              ],
            ],
          ),
        ),
      ),
    );
    return wrap
        ? IntrinsicWidth(
            child: child,
          )
        : child;
  }

  Color _backgroundColor(BuildContext context) {
    if (!enable || onPressed == null) {
      return type.data(context).disabledBgColor;
    }

    if (type == CCButtonType.filled) {
      return variant.data(context).backgroundColor;
    }

    return variant.data(context).outlineBgColor;
  }

  Color _textColor(BuildContext context) {
    if (!enable || onPressed == null) {
      return type.data(context).disabledFgColor;
    }

    if (type == CCButtonType.filled) {
      return variant.data(context).foregroundColor;
    }

    if (variant == CCButtonVariant.tertiary) {
      return context.ccColor.text.neutral.strong;
    }

    return variant.data(context).outlineFgColor;
  }

  Color _borderColor(BuildContext context) {
    if (!enable || onPressed == null) {
      return type.data(context).disabledBorderColor;
    }

    if (type == CCButtonType.outline) {
      return variant.data(context).borderColor;
    }

    return Colors.transparent;
  }
}
