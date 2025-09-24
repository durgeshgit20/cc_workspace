import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'cc_button_test_scenario.dart';

void main() {
  group(
    'CCButton',
    () {
      testWidgets(
        ccButtonTestScenario[0].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[0].widget,
          );

          // Verify initial state
          expect(find.text('Test Button'), findsOneWidget);
          expect(find.byType(SpinKitFadingCircle), findsNothing);

          // Tap the button
          await tester.tap(find.byType(CCButton));
          await tester.pump();

          // Verify that the button shows loading spinner and is disabled
          expect(find.byType(SpinKitFadingCircle), findsOneWidget);
          expect(
            tester.widget<MaterialButton>(find.byType(MaterialButton)).enabled,
            isFalse,
          );

          // Wait for the debounce period to end
          await tester.pumpAndSettle(const Duration(milliseconds: 500));

          // Verify that the button returns to its original state
          expect(find.text('Test Button'), findsOneWidget);
          expect(find.byType(SpinKitFadingCircle), findsNothing);
          expect(
            tester.widget<MaterialButton>(find.byType(MaterialButton)).enabled,
            isTrue,
          );
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[1].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[1].widget,
          );

          // Verify initial state
          expect(find.text('Test Button'), findsOneWidget);
          expect(find.byType(SpinKitFadingCircle), findsNothing);

          // Tap the button
          await tester.tap(find.byType(CCButton));
          await tester.pump();

          // Verify that the button remains enabled and no loading spinner appears
          expect(find.byType(SpinKitFadingCircle), findsNothing);
          expect(
            tester.widget<MaterialButton>(find.byType(MaterialButton)).enabled,
            isTrue,
          );

          // Wait for the onPressed callback to complete
          await tester.pumpAndSettle();

          // Verify that the button state hasn't changed
          expect(find.text('Test Button'), findsOneWidget);
          expect(find.byType(SpinKitFadingCircle), findsNothing);
          expect(
            tester.widget<MaterialButton>(find.byType(MaterialButton)).enabled,
            isTrue,
          );
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[2].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[2].widget,
          );

          final button = tester.widget<CCButton>(find.byType(CCButton));
          expect(button.variant, equals(CCButtonVariant.primary));
          expect(find.text('Primary Button'), findsOneWidget);
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[3].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[3].widget,
          );

          final button = tester.widget<CCButton>(find.byType(CCButton));
          expect(button.variant, equals(CCButtonVariant.secondary));
          expect(find.text('Secondary Button'), findsOneWidget);
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[4].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[4].widget,
          );

          final button = tester.widget<CCButton>(find.byType(CCButton));
          expect(button.variant, equals(CCButtonVariant.tertiary));
          expect(find.text('Tertiary Button'), findsOneWidget);
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[5].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[5].widget,
          );

          final button = tester.widget<CCButton>(find.byType(CCButton));
          expect(button.variant, equals(CCButtonVariant.danger));
          expect(find.text('Danger Button'), findsOneWidget);
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[6].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[6].widget,
          );

          final button = tester.widget<CCButton>(find.byType(CCButton));
          expect(button.size, equals(CCButtonSize.sm));
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[7].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[7].widget,
          );

          expect(find.byIcon(Icons.star), findsOneWidget);
          expect(find.byIcon(Icons.arrow_forward), findsOneWidget);
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[8].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[8].widget,
          );

          expect(find.byType(IntrinsicWidth), findsOneWidget);
        },
        tags: ['atoms'],
      );

      testWidgets(
        ccButtonTestScenario[9].title,
        (WidgetTester tester) async {
          await tester.pumpWidget(
            ccButtonTestScenario[9].widget,
          );

          expect(find.byType(IntrinsicWidth), findsNothing);
        },
        tags: ['atoms'],
      );
    },
  );
}
