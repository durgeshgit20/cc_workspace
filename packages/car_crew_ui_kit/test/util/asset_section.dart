import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class AssetSection extends StatelessWidget {
  const AssetSection({
    required this.title,
    required this.assetItems,
    this.titleStyle,
    super.key,
  });

  final String title;
  final TextStyle? titleStyle;
  final List<Widget> assetItems;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle ?? CCTypography.heading(),
          ),
          Gap(CCSize.size8.h),
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: assetItems,
          ),
          Gap(CCSize.size16.h),
        ],
      );
}
