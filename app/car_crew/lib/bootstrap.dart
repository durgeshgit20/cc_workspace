import 'dart:async';
import 'dart:developer';

import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:l10n/l10n.dart';

import 'package:car_crew/di/di.dart';
import 'package:car_crew/error_app.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

void bootstrap(FutureOr<Widget> Function() builder) {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      addFontLicense();
      await preCacheIcons();
      await preCacheLogos();
      setPluralizationResolverForID();
      
      await configureDependencies();
      await SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
        ],
      );
      await LocaleSettings.useDeviceLocale();
      FlutterError.onError = (details) {
        getIt<Log>().console(
          details.exceptionAsString(),
          stackTrace: details.stack,
          type: LogType.fatal,
        );
      };

      Bloc.observer = const AppBlocObserver();
      ErrorWidget.builder = (details) => const ErrorApp();
      runApp(await builder());
    },
    (error, stack) => log(error.toString()),
  );
}
