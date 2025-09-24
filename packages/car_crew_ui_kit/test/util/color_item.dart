import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCColorItem extends StatelessWidget {
  const CCColorItem({
    required this.color,
    required this.label,
    this.baseColor,
    this.baseColorName,
    super.key,
  }) : assert(
          (baseColor != null && baseColorName != null) ||
              (baseColor == null && baseColorName == null),
          'baseColorName must be set when baseColor is not null!',
        );

  final Color color;
  final String label;
  final MaterialColor? baseColor;
  final String? baseColorName;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: CCTypography.semiboldSm(),
          ),
          Gap(CCSize.size4.h),
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              boxShadow: context.ccShadow.card,
              color: color,
              borderRadius: BorderRadius.circular(CCBorderRadius.xs.r),
              border: Border.all(
                color: context.ccColor.outline.neutral.main,
              ),
            ),
          ),
          Gap(CCSize.size4.h),
          Text(
            _colorCode,
            textAlign: TextAlign.center,
            style: CCTypography.semiboldSm(),
          ),
        ],
      );

  String get _colorCode {
    if (baseColor == null && baseColorName == null) {
      return color.hexString;
    }

    return baseColor!.getNameAndIndex(color, baseColorName!);
  }
}
