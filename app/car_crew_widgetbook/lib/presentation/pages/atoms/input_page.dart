import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Fields'),
        actions: const [ThemeSwitcherButton()],
      ),
      body: ListView(
        padding: EdgeInsets.all(CCSize.size16.r),
        children: [
          CCTextField(
            label: 'Full Name',
            hintText: 'Jane Doe',
            textCapitalization: TextCapitalization.words,
          ),
          Gap(CCSize.size24.h),
          CCTextField(
            controller: _emailController,
            label: 'Email Address',
            hintText: 'name@example.com',
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!value.contains('@')) {
                return 'Enter a valid email';
              }
              return null;
            },
          ),
          Gap(CCSize.size24.h),
          const CCTextField(
            label: 'Password',
            hintText: '••••••••',
            obscureText: true,
            suffix: Icon(Icons.lock_outline),
          ),
          Gap(CCSize.size24.h),
          const CCTextField(
            label: 'Disabled',
            hintText: 'Read only field',
            enabled: false,
          ),
        ],
      ),
    );
  }
}
