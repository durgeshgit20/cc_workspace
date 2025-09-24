import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';

class BaseElementPage extends StatelessWidget {
  const BaseElementPage({
    required this.title,
    required this.children,
    super.key,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: const [ThemeSwitcherButton()],
      ),
      body: ListView(
        padding: EdgeInsets.all(CCSize.size16.r),
        children: children,
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: 30.h,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.start,
        ),
      );
}

class SectionButton extends StatelessWidget {
  const SectionButton({required this.name, required this.page, super.key});

  final String name;
  final Widget page;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: CCSize.size16.h,
        ),
        child: CCButton.primary(
          label: name,
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute<dynamic>(builder: (context) => page),
            );
          },
        ),
      );
}
