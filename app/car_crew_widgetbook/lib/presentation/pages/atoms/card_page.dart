import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
        actions: const [
          ThemeSwitcherButton(),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.transparent,
        padding: EdgeInsets.all(CCSize.size16.r),
        child: Column(
          children: [
            const CCCard(
              child: Center(
                child: Text('Default'),
              ),
            ),
            Gap(CCSize.size16.h),
            CCCard(
              height: 120.h,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  context.ccColor.outline.color.primary,
                  context.ccColor.background.subtle.primary,
                  context.ccColor.background.card.main,
                ],
                stops: const [0.0, 0.4, 1.0],
              ),
              child: const Center(
                child: Text('Gradient'),
              ),
            ),
            Gap(CCSize.size16.h),
            CCCard(
              height: 120.h,
              bgColor: context.ccColor.background.subtle.primary,
              child: Center(
                child: Text(
                  'Custom Color',
                  style: CCTypography.bold(
                    color: context.ccColor.text.color.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
