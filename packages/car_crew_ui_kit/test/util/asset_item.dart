import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_base.dart';
import 'package:flutter/material.dart';

class AssetItem extends StatelessWidget {
  const AssetItem({
    required this.asset,
    super.key,
    this.color,
    this.containerSize,
    this.iconSize,
  });

  final CCAssetBase asset;
  final Color? color;
  final double? containerSize;
  final double? iconSize;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.ccColor.background.card.main,
              boxShadow: context.ccShadow.card,
              borderRadius: BorderRadius.circular(CCBorderRadius.md.r),
            ),
            width: containerSize?.w,
            height: containerSize?.h,
            padding: EdgeInsets.all(CCSize.size8.r),
            child: Builder(
              builder: (context) {
                if (asset is CCIcons) {
                  return CCAsset.icon(
                    icon: asset as CCIcons,
                    color: color ?? context.ccColor.icon.neutral.strong,
                    size: iconSize,
                  );
                } else if (asset is CCLogo) {
                  return CCAsset.logo(
                    logo: asset as CCLogo,
                    width: iconSize,
                    height: iconSize,
                  );
                }

                return CCAsset.animation(
                  animation: asset as CCAnimations,
                  animate: false,
                  fit: BoxFit.contain,
                );
              },
            ),
          ),
          Gap(CCSize.size4.h),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              _label,
              textAlign: TextAlign.center,
              style: CCTypography.semiboldSm(),
            ),
          ),
        ],
      );

  String get _label => asset.toString().split('.').last;
}
