import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';

class OutlineColorPage extends StatelessWidget {
  const OutlineColorPage({
    required this.colorData,
    super.key,
  });

  final ColorData colorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.ccColor.background.neutral.main,
      body: Center(
        child: Container(
          width: 150.w,
          height: 150.h,
          alignment: Alignment.center,
          padding: EdgeInsets.all(CCSize.size8.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CCBorderRadius.md),
            border: Border.all(
              color: colorData.color,
              width: 2.sp,
            ),
            color: Colors.transparent,
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
