import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

enum ColorType {
  action,
  background,
  icon,
  outline,
  overlay,
  text,
}

class ColorData {
  ColorData({
    required this.token,
    required this.color,
    required this.colorType,
    this.textColor,
  });

  final String token;
  final Color color;
  final Color? textColor;
  final ColorType colorType;
}

List<ColorData> getColors(BuildContext context) => [
      ColorData(
        token: 'action.primary',
        color: context.ccColor.action.primary.active,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.secondary',
        color: context.ccColor.action.secondary.active,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.gray',
        color: context.ccColor.action.gray.active,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.error',
        color: context.ccColor.action.error.active,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'background.card.main',
        color: context.ccColor.background.card.main,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.card.secondary',
        color: context.ccColor.background.card.secondary,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.main',
        color: context.ccColor.background.neutral.main,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.white',
        color: context.ccColor.background.neutral.white,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.strong',
        color: context.ccColor.background.neutral.strong,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.subtle',
        color: context.ccColor.background.neutral.subtle,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.inverse',
        textColor: context.ccColor.text.neutral.inverse,
        colorType: ColorType.background,
        color: context.ccColor.background.neutral.inverse,
      ),
      ColorData(
        token: 'background.solid.primary',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.ccColor.background.solid.primary,
      ),
      ColorData(
        token: 'background.solid.secondary',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.ccColor.background.solid.secondary,
      ),
      ColorData(
        token: 'background.solid.info',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.ccColor.background.solid.info,
      ),
      ColorData(
        token: 'background.solid.error',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.ccColor.background.solid.error,
      ),
      ColorData(
        token: 'background.solid.warning',
        color: context.ccColor.background.solid.warning,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.solid.success',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.ccColor.background.solid.success,
      ),
      ColorData(
        token: 'background.subtle.primary',
        color: context.ccColor.background.subtle.primary,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.secondary',
        color: context.ccColor.background.subtle.secondary,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.info',
        color: context.ccColor.background.subtle.info,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.error',
        color: context.ccColor.background.subtle.error,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.warning',
        color: context.ccColor.background.subtle.warning,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.success',
        color: context.ccColor.background.subtle.success,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'text.neutral.main',
        textColor: context.ccColor.text.neutral.inverse,
        color: context.ccColor.text.neutral.main,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.subtle',
        textColor: context.ccColor.text.neutral.inverse,
        color: context.ccColor.text.neutral.subtle,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.strong',
        textColor: context.ccColor.text.neutral.inverse,
        color: context.ccColor.text.neutral.strong,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.inverse',
        textColor: context.ccColor.text.neutral.main,
        color: context.ccColor.text.neutral.inverse,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.disabled',
        textColor: Colors.white,
        color: context.ccColor.text.neutral.disabled,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.color.primary',
        textColor: Colors.white,
        color: context.ccColor.text.color.primary,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.color.secondary',
        textColor: Colors.white,
        color: context.ccColor.text.color.secondary,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.color.info',
        textColor: Colors.white,
        color: context.ccColor.text.color.info,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.color.error',
        textColor: Colors.white,
        color: context.ccColor.text.color.error,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.color.warning',
        textColor: Colors.white,
        color: context.ccColor.text.color.warning,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.color.success',
        textColor: Colors.white,
        color: context.ccColor.text.color.success,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'icon.neutral.main',
        textColor: context.ccColor.text.neutral.inverse,
        color: context.ccColor.icon.neutral.main,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.subtle',
        textColor: context.ccColor.text.neutral.inverse,
        color: context.ccColor.icon.neutral.subtle,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.strong',
        textColor: context.ccColor.text.neutral.inverse,
        color: context.ccColor.icon.neutral.strong,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.inverse',
        textColor: context.ccColor.text.neutral.main,
        color: context.ccColor.icon.neutral.inverse,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.disabled',
        textColor: Colors.white,
        color: context.ccColor.icon.neutral.disabled,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'text.color.primary',
        textColor: Colors.white,
        color: context.ccColor.text.color.primary,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'icon.color.secondary',
        textColor: Colors.white,
        color: context.ccColor.icon.color.secondary,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.color.info',
        textColor: Colors.white,
        color: context.ccColor.icon.color.info,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.color.error',
        textColor: Colors.white,
        color: context.ccColor.icon.color.error,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.color.warning',
        textColor: Colors.white,
        color: context.ccColor.icon.color.warning,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.color.success',
        textColor: Colors.white,
        color: context.ccColor.icon.color.success,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'outline.neutral.main',
        textColor: context.ccColor.text.neutral.main,
        color: context.ccColor.outline.neutral.main,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.neutral.strong',
        textColor: context.ccColor.text.neutral.main,
        color: context.ccColor.outline.neutral.strong,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.neutral.subtle',
        textColor: context.ccColor.text.neutral.main,
        color: context.ccColor.outline.neutral.subtle,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.primary',
        color: context.ccColor.outline.color.primary,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.secondary',
        color: context.ccColor.outline.color.secondary,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.info',
        color: context.ccColor.outline.color.info,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.success',
        color: context.ccColor.outline.color.success,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.warning',
        color: context.ccColor.outline.color.warning,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.error',
        color: context.ccColor.outline.color.error,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'overlay',
        textColor: context.ccColor.text.neutral.main,
        color: context.ccColor.overlay,
        colorType: ColorType.overlay,
      ),
    ];
