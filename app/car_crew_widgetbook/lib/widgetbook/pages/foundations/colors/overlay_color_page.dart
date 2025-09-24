import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';

class OverlayColorPage extends StatelessWidget {
  const OverlayColorPage({
    required this.colorData,
    super.key,
  });

  final ColorData colorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 160.w,
          height: 160.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CCBorderRadius.md),
            color: colorData.color,
            border: Border.all(
              color: context.ccColor.outline.neutral.main,
            ),
          ),
          child: Text(
            colorData.token.replaceAll('.', '/'),
            textAlign: TextAlign.center,
            style: CCTypography.body(),
          ),
        ),
      ),
    );
  }
}
