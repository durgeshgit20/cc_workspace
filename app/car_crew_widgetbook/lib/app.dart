import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => TranslationProvider(
        child: CCComponentInit(
          builder: (_) => ChangeNotifierProvider(
            create: (_) => ThemeProvider(),
            child: Consumer<ThemeProvider>(
              builder: (_, themeState, __) {
                return MaterialApp(
                  title: 'Car Crew UI KIT',
                  theme: CCTheme.light(ThemeData.light()).themeData,
                  darkTheme: CCTheme.dark(ThemeData.dark()).themeData,
                  themeMode: themeState.themeMode,
                  home: const HomePage(),
                  locale: LocaleSettings.currentLocale.flutterLocale,
                  supportedLocales: AppLocaleUtils.supportedLocales,
                  localizationsDelegates: GlobalMaterialLocalizations.delegates,
                );
              },
            ),
          ),
        ),
      );
}
