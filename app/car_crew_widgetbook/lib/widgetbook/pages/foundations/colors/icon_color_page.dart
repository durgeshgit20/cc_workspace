import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';

class IconColorPage extends StatelessWidget {
  const IconColorPage({
    required this.colorData,
    super.key,
  });

  final ColorData colorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorData.token.contains('inverse')
          ? context.ccColor.background.neutral.white
          : context.ccColor.background.neutral.main,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home_rounded,
              size: 24.sp,
              color: colorData.color,
            ),
            Gap(CCSize.size12.w),
            Text(
              colorData.token.replaceAll('.', '/'),
              style: CCTypography.body(
                color: colorData.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
