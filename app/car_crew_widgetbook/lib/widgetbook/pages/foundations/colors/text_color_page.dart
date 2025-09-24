import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';

class TextColorPage extends StatelessWidget {
  const TextColorPage({
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
        child: Text(
          colorData.token.replaceAll('.', '/'),
          style: CCTypography.body(
            color: colorData.color,
          ),
        ),
      ),
    );
  }
}
