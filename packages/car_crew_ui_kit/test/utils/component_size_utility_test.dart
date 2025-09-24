import 'package:car_crew_ui_kit/src/utils/component_size_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util/cc_component_test_wrapper.dart';

void main() {
  group(
    'ComponentSizeUtility',
    () {
      late BuildContext context;
      final GlobalKey<NavigatorState> navigatorKey =
          GlobalKey<NavigatorState>();

      setUpAll(
        TestWidgetsFlutterBinding.ensureInitialized,
      );

      group(
        'getTextHeight',
        () {
          testWidgets(
            'returns correct height for simple text',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              const text = Text(
                'Hello',
                style: TextStyle(fontSize: 16),
              );
              final height = ComponentSizeUtility.getTextHeight(
                text: text,
                context: context,
              );
              expect(
                height,
                closeTo(16, 1),
              ); // Allow small deviation due to font rendering differences
            },
            tags: ['utils'],
          );

          testWidgets(
            'returns greater height for multiline text',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              const text = Text(
                'Hello\nWorld',
                style: TextStyle(fontSize: 16),
              );
              final height = ComponentSizeUtility.getTextHeight(
                text: text,
                context: context,
              );
              expect(
                height,
                closeTo(32, 1),
              ); // Approximately double the single line height
            },
            tags: ['utils'],
          );

          testWidgets(
            'returns greater height for larger font size',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              const text = Text(
                'Hello',
                style: TextStyle(fontSize: 32),
              );
              final height = ComponentSizeUtility.getTextHeight(
                text: text,
                context: context,
              );
              expect(height, greaterThan(30));
            },
            tags: ['utils'],
          );
        },
      );

      group(
        'getTextWidth',
        () {
          testWidgets(
            'returns correct width for simple text',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              const text = Text(
                'Hello',
                style: TextStyle(fontSize: 16),
              );
              final width = ComponentSizeUtility.getTextWidth(
                text: text,
                context: context,
              );
              expect(
                width,
                closeTo(80, 5),
              ); // Allow small deviation due to font rendering differences
            },
            tags: ['utils'],
          );

          testWidgets(
            'returns greater width for longer text',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              const text = Text('Hello World', style: TextStyle(fontSize: 16));
              final width = ComponentSizeUtility.getTextWidth(
                text: text,
                context: context,
              );
              expect(width, greaterThan(80));
            },
            tags: ['utils'],
          );

          testWidgets(
            'returns greater width for larger font size',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: const Scaffold(),
                ),
              );
              context = navigatorKey.currentContext!;
              const text = Text(
                'Hello',
                style: TextStyle(fontSize: 32),
              );
              final width = ComponentSizeUtility.getTextWidth(
                text: text,
                context: context,
              );
              expect(width, greaterThan(70));
            },
            tags: ['utils'],
          );
        },
      );
    },
  );
}
