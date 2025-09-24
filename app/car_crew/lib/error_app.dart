import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:car_crew/di/di.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

class ErrorApp extends StatelessWidget {
  const ErrorApp({super.key});

  @override
  Widget build(BuildContext context) => CCComponentInit(
        builder: (_) => MaterialApp(
          title: 'Car Crew',
          debugShowCheckedModeBanner: false,
          theme: CCTheme.light(ThemeData.light()).themeData,
          darkTheme: CCTheme.dark(ThemeData.dark()).themeData,
          locale: LocaleSettings.currentLocale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: Scaffold(
            body: Center(
              child: Stack(
                children: [
                  Align(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CCAsset.animation(
                          animation: CCAnimations.maintenance,
                          width: 0.5.sw,
                          fit: BoxFit.cover,
                        ),
                        Gap(CCSize.size16.h),
                        Text(
                          context.l10n.error.somethingWentWrong,
                          style: CCTypography.headingXs(),
                          textAlign: TextAlign.center,
                        ),
                        Gap(CCSize.size8.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: CCSize.size64.w,
                          ),
                          child: Text(
                            context.l10n.error.somethingWentWrong,
                            style: CCTypography.bodySm(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CCAsset.logo(
                          logo: CCLogo.banuaCoder,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              getIt<PackageInfoUtil>().appName(),
                              style: CCTypography.bodySm(),
                            ),
                            Text(
                              ' - ',
                              style: CCTypography.bodySm(),
                            ),
                            Text(
                              'v${getIt<PackageInfoUtil>().version()}',
                              style: CCTypography.bodySm(),
                            ),
                          ],
                        ),
                        Gap(CCSize.size32.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
