import 'package:car_crew_ui_kit/src/foundations/foundations.dart';
import 'package:flutter/material.dart';

@immutable
class CCColorExtension extends ThemeExtension<CCColorExtension> {
  final Color overlay;
  final CCTextColor text;
  final CCIconColor icon;
  final CCActionColor action;
  final CCOutlineColor outline;
  final CCMaterialColor material;
  final CCBackgroundColor background;

  const CCColorExtension._({
    required this.text,
    required this.icon,
    required this.action,
    required this.outline,
    required this.overlay,
    required this.material,
    required this.background,
  });

  factory CCColorExtension.light() => CCColorExtension._(
        text: CCTextColor.light(),
        icon: CCIconColor.light(),
        action: CCActionColor.light(),
        outline: CCOutlineColor.light(),
        overlay: CCColorFoundation.overlay,
        material: CCMaterialColor.generate(),
        background: CCBackgroundColor.light(),
      );

  factory CCColorExtension.dark() => CCColorExtension._(
        text: CCTextColor.dark(),
        icon: CCIconColor.dark(),
        action: CCActionColor.dark(),
        outline: CCOutlineColor.dark(),
        material: CCMaterialColor.generate(),
        background: CCBackgroundColor.dark(),
        overlay: CCColorFoundation.overlayDark,
      );

  @override
  ThemeExtension<CCColorExtension> copyWith({
    Color? overlay,
    CCTextColor? text,
    CCIconColor? icon,
    CCActionColor? action,
    CCOutlineColor? outline,
    CCMaterialColor? material,
    CCBackgroundColor? background,
  }) =>
      CCColorExtension._(
        text: text ?? this.text,
        icon: icon ?? this.icon,
        action: action ?? this.action,
        outline: outline ?? this.outline,
        overlay: overlay ?? this.overlay,
        material: material ?? this.material,
        background: background ?? this.background,
      );

  @override
  ThemeExtension<CCColorExtension> lerp(
    covariant ThemeExtension<CCColorExtension>? other,
    double t,
  ) {
    if (other is! CCColorExtension) {
      return this;
    }

    return CCColorExtension._(
      text: text.lerp(other.text, t),
      icon: icon.lerp(other.icon, t),
      action: action.lerp(other.action, t),
      outline: outline.lerp(other.outline, t),
      material: material.lerp(other.material, t),
      background: background.lerp(other.background, t),
      overlay: Color.lerp(overlay, other.overlay, t) ?? overlay,
    );
  }
}
