import 'package:dependencies/auto_route/auto_route.dart';
import 'package:car_crew/di/di.dart';
import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:car_crew/router/router.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final _router = CarCrewRouter();

  @override
  Widget build(BuildContext context) => CCComponentInit(
        builder: (_) => MaterialApp.router(
          title: 'Car Crew',
          debugShowCheckedModeBanner: false,
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => [
              HeroineController(),
              CarCrewRouteObserver(),
            ],
          ),
          builder: (_, child) => LoaderOverlay(
            overlayColor: context.ccColor.overlay,
            overlayWidgetBuilder: (progress) => Center(
              child: SpinKitCircle(
                color: context.ccColor.action.primary.active,
                size: CCSize.size32.sp,
              ),
            ),
            child: child ?? nil,
          ),
          routeInformationParser: _router.defaultRouteParser(),
          theme: CCTheme.light(ThemeData.light()).themeData,
          darkTheme: CCTheme.dark(ThemeData.dark()).themeData,
          locale: LocaleSettings.currentLocale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          scaffoldMessengerKey:
                  getIt<MessengerUtil>().rootScaffoldMessengerKey,
        ),
      );
}
