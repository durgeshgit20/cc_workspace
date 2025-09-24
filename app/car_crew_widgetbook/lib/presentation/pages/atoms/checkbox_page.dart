import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool? _standard = false;
  bool? _triState = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkboxes'),
        actions: const [ThemeSwitcherButton()],
      ),
      body: Padding(
        padding: EdgeInsets.all(CCSize.size16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CCCheckbox(
              value: _standard,
              label: 'Standard checkbox',
              onChanged: (value) => setState(() => _standard = value ?? false),
            ),
            Gap(CCSize.size16.h),
            CCCheckbox(
              tristate: true,
              value: _triState,
              label: 'Tri-state checkbox',
              onChanged: (value) => setState(() => _triState = value),
            ),
            Gap(CCSize.size16.h),
            const CCCheckbox(
              value: true,
              label: 'Disabled checkbox',
              onChanged: null,
            ),
          ],
        ),
      ),
    );
  }
}
