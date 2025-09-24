import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_type.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/utils/cc_asset_data.dart';
import 'package:car_crew_ui_kit/src/core/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CCAsset extends StatelessWidget {
  const CCAsset._({
    required this.fit,
    required this.asset,
    this.color,
    this.width,
    this.height,
    this.semanticLabel,
    this.repeat = false,
    this.animate = false,
  });

  factory CCAsset.logo({
    required CCLogo logo,
    Color? color,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
    String? semanticLabel,
  }) =>
      CCAsset._(
        asset: logo.data,
        color: color,
        width: width,
        height: height,
        fit: fit,
        semanticLabel: semanticLabel,
      );

  factory CCAsset.animation({
    required CCAnimations animation,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
    String? semanticLabel,
    bool repeat = true,
    bool animate = true,
  }) =>
      CCAsset._(
        asset: animation.data,
        width: width,
        height: height,
        fit: fit,
        semanticLabel: semanticLabel,
        repeat: repeat,
        animate: animate,
      );

  factory CCAsset.icon({
    required CCIcons icon,
    double? size,
    BoxFit fit = BoxFit.fill,
    String? semanticLabel,
    Color? color,
  }) =>
      CCAsset._(
        asset: icon.data,
        width: size,
        height: size,
        fit: fit,
        color: color,
        semanticLabel: semanticLabel,
      );

  final CCAssetData<dynamic> asset;
  final Color? color;
  final BoxFit fit;
  final double? width;
  final double? height;
  final String? semanticLabel;
  final bool repeat;
  final bool animate;

  @override
  Widget build(BuildContext context) => switch (asset.type) {
        CCAssetType.svg => SvgPicture.asset(
            (asset.file(context) as SvgGenImage).path,
            fit: fit,
            width: width == null ? null : width! * 1.w,
            height: height == null ? null : height! * 1.h,
            colorFilter: color == null || !asset.overrideColor
                ? null
                : ColorFilter.mode(
                    color!,
                    BlendMode.srcIn,
                  ),
            matchTextDirection: true,
            semanticsLabel: semanticLabel,
            package: Assets.package,
          ),
        CCAssetType.lottie =>
          (asset.file(context) as LottieGenImage).lottie(
            fit: fit,
            width: width == null ? null : width! * 1.w,
            height: height == null ? null : height! * 1.w,
            repeat: repeat,
            animate: animate,
          ),
        _ => nil,
      };
}
