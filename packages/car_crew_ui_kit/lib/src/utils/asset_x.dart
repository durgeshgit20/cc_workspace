import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

extension AssetX on BuildContext {
  ThemeExtension<CCAssetExtension> get _assetExtension {
    final extension = Theme.of(this).extension<CCAssetExtension>();

    if (extension != null) {
      return extension;
    }

    if (isDarkTheme) {
      return CCAssetExtension.dark();
    }

    return CCAssetExtension.light();
  }

  CCAssetExtension get ccAsset =>
      _assetExtension as CCAssetExtension;
}
