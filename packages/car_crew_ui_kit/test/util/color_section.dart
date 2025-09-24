import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCColorSection extends StatelessWidget {
  const CCColorSection({
    required this.title,
    required this.colorItems,
    this.titleStyle,
    super.key,
  });

  final String title;
  final TextStyle? titleStyle;
  final List<Widget> colorItems;

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
            children: colorItems,
          ),
          Gap(CCSize.size16.h),
        ],
      );
}
