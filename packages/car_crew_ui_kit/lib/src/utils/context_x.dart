import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  ThemeExtension<CCColorExtension> get _colorExtension {
    final extension = Theme.of(this).extension<CCColorExtension>();

    if (extension != null) {
      return extension;
    }

    if (isDarkTheme) {
      return CCColorExtension.dark();
    }
    return CCColorExtension.light();
  }

  ThemeExtension<CCShadowExtension> get _shadowExtension {
    final extension = Theme.of(this).extension<CCShadowExtension>();
    if (extension != null) {
      return extension;
    }
    if (isDarkTheme) {
      return CCShadowExtension.dark();
    }
    return CCShadowExtension.light();
  }

  CCColorExtension get ccColor =>
      _colorExtension as CCColorExtension;
  CCShadowExtension get ccShadow =>
      _shadowExtension as CCShadowExtension;

  Brightness get currentBrightness => Theme.of(this).brightness;
  bool get isDarkTheme => currentBrightness == Brightness.dark;
  Brightness get inverseBrightness =>
      isDarkTheme ? Brightness.light : Brightness.dark;
}
