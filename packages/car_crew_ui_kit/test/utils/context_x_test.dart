import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util/cc_component_test_wrapper.dart';

void main() {
  group(
    'BuildContextX',
    () {
      late BuildContext context;
      final GlobalKey<NavigatorState> navigatorKey =
          GlobalKey<NavigatorState>();

      setUpAll(TestWidgetsFlutterBinding.ensureInitialized);

      testWidgets(
        'ccColor returns CCColorExtension',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: const Scaffold(),
            ),
          );
          context = navigatorKey.currentContext!;
          final ccColor = context.ccColor;
          expect(ccColor, isA<CCColorExtension>());
        },
        tags: ['extensions', 'utils'],
      );

      testWidgets(
        'ccShadow returns CCShadowExtension',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: const Scaffold(),
            ),
          );
          context = navigatorKey.currentContext!;
          final ccShadow = context.ccShadow;
          expect(ccShadow, isA<CCShadowExtension>());
        },
        tags: ['extensions', 'utils'],
      );

      testWidgets(
        'currentBrightness returns correct brightness',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: const Scaffold(),
            ),
          );
          context = navigatorKey.currentContext!;
          expect(context.currentBrightness, equals(Brightness.light));
        },
        tags: ['extensions', 'utils'],
      );

      testWidgets(
        'isDarkTheme returns false for light theme',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: const Scaffold(),
            ),
          );
          context = navigatorKey.currentContext!;
          expect(context.isDarkTheme, isFalse);
        },
        tags: ['extensions', 'utils'],
      );

      testWidgets(
        'inverseBrightness returns dark for light theme',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: const Scaffold(),
            ),
          );
          context = navigatorKey.currentContext!;
          expect(context.inverseBrightness, equals(Brightness.dark));
        },
        tags: ['extensions', 'utils'],
      );

      group('Dark theme', () {
        testWidgets(
          'isDarkTheme returns true for dark theme',
          (WidgetTester tester) async {
            await tester.pumpWidget(
              CCComponentTestWrapper(
                isDarkMode: true,
                navigatorKey: navigatorKey,
                child: const Scaffold(),
              ),
            );
            context = navigatorKey.currentContext!;
            expect(context.isDarkTheme, isTrue);
          },
          tags: ['extensions', 'utils'],
        );

        testWidgets(
          'inverseBrightness returns light for dark theme',
          (WidgetTester tester) async {
            await tester.pumpWidget(
              CCComponentTestWrapper(
                isDarkMode: true,
                navigatorKey: navigatorKey,
                child: const Scaffold(),
              ),
            );
            context = navigatorKey.currentContext!;
            expect(context.inverseBrightness, equals(Brightness.light));
          },
          tags: ['extensions', 'utils'],
        );
      });

      group(
        '_colorExtension',
        () {
          testWidgets(
            'returns CCColorExtension.light() when no extension is provided',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              final colorExtension = context.ccColor;
              expect(colorExtension, isA<CCColorExtension>());
            },
            tags: ['extensions', 'utils'],
          );
        },
      );

      group(
        '_shadowExtension',
        () {
          testWidgets(
            'returns CCShadowExtension.light() when no extension is provided',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              final shadowExtension = context.ccShadow;
              expect(shadowExtension, isA<CCShadowExtension>());
            },
            tags: ['extensions', 'utils'],
          );
        },
      );
    },
  );
}
