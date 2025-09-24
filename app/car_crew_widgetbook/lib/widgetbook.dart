import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CCComponentInit(
      builder: (_) => Widgetbook.material(
        directories: directories,
        addons: [
           TextScaleAddon(
            initialScale: 1,
            min: 1.0,
            max: 1.2,
          ),
          ZoomAddon(),
          InspectorAddon(enabled: true),
          DeviceFrameAddon(
            devices: [
              Devices.ios.iPhone13ProMax,
              Devices.ios.iPhone12ProMax,
              Devices.ios.iPhoneSE,
              Devices.android.bigPhone,
              Devices.android.samsungGalaxyA50,
              Devices.android.samsungGalaxyS20,
              Devices.android.onePlus8Pro,
              Devices.android.mediumPhone,
            ],
            initialDevice: Devices.android.samsungGalaxyA50,
          ),
          MaterialThemeAddon(
            themes: [
              WidgetbookTheme(
                name: 'Light',
                data: CCTheme.light(ThemeData.light()).themeData,
              ),
              WidgetbookTheme(
                name: 'Dark',
                data: CCTheme.dark(ThemeData.dark()).themeData,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
