import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

import 'package:car_crew_widgetbook/app.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';
import 'package:car_crew_widgetbook/widgetbook.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    preCacheIcons(),
    preCacheLogos(),
  ]);
  addFontLicense();
  LocaleSettings.useDeviceLocale();
  if (kIsWeb) {
    runApp(const WidgetbookApp());
  } else if (Platform.isAndroid || Platform.isIOS) {
    runApp(const App());
  } else {
    runApp(const WidgetbookApp());
  }
}
