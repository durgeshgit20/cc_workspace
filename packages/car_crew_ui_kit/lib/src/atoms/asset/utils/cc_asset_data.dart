import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_type.dart';
import 'package:flutter/material.dart';

@immutable
class CCAssetData<T> {
  final T Function(BuildContext context) file;
  final CCAssetType type;
  final bool overrideColor;
  const CCAssetData({
    required this.file,
    required this.type,
    this.overrideColor = true,
  });

  String get packageName => 'car_crew_ui_kit';
}
