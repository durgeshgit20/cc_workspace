import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCComponentTestWrapper extends StatelessWidget {
  const CCComponentTestWrapper({
    required this.child,
    this.isDarkMode = false,
    this.navigatorKey,
    super.key, 
  });

  final Widget child;
  final bool isDarkMode;
  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  Widget build(BuildContext context) => CCComponentInit(
    builder: (_) => MaterialApp(
      title: 'Car Crew UI Kit',
      theme: isDarkMode ? CCTheme.dark(ThemeData.dark()).themeData 
          : CCTheme.light(ThemeData.light()).themeData,
      home: child,
      navigatorKey: navigatorKey,
    ),
  );
}
