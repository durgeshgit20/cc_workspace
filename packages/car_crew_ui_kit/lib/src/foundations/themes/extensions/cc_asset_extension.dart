import 'package:car_crew_ui_kit/src/core/assets/assets.dart';
import 'package:flutter/material.dart';

class CCAssetExtension extends ThemeExtension<CCAssetExtension> {
  final CCSvg svg;
  final CCLottie animation;

  const CCAssetExtension._({
    required this.svg,
    required this.animation,
  });

  factory CCAssetExtension.light() => CCAssetExtension._(
        svg: CCSvg.light(),
        animation: CCLottie.light(),
      );

  factory CCAssetExtension.dark() => CCAssetExtension._(
        svg: CCSvg.dark(),
        animation: CCLottie.dark(),
      );

  @override
  ThemeExtension<CCAssetExtension> copyWith({
    CCSvg? svg,
    CCLottie? animation,
  }) =>
      CCAssetExtension._(
        svg: svg ?? this.svg,
        animation: animation ?? this.animation,
      );

  @override
  ThemeExtension<CCAssetExtension> lerp(
    covariant ThemeExtension<CCAssetExtension>? other,
    double t,
  ) {
    if (other is! CCAssetExtension) {
      return this;
    }

    return other;
  }
}
