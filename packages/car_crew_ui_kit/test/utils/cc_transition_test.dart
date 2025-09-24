
import 'dart:async';

import 'package:car_crew_ui_kit/src/utils/cc_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util/cc_component_test_wrapper.dart';

void main() {
  group(
    'CCTransition',
    () {
      late BuildContext context;
      late Animation<double> animation;
      late Animation<double> secondaryAnimation;
      late Widget child;
      final GlobalKey<NavigatorState> navigatorKey =
          GlobalKey<NavigatorState>();

      setUp(
        () {
          TestWidgetsFlutterBinding.ensureInitialized();
          animation = AnimationController(
            vsync: const TestVSync(),
            duration: const Duration(milliseconds: 300),
          );
          secondaryAnimation = AnimationController(
            vsync: const TestVSync(),
            duration: const Duration(milliseconds: 300),
          );
          child = Container();
        },
      );

      testWidgets(
        'fade transition returns FadeTransition',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: child,
            ),
          );
          context = navigatorKey.currentContext!;
          final result = CCTransition.fade.builder(
            context,
            animation,
            secondaryAnimation,
            child,
          );
          expect(result, isA<FadeTransition>());
        },
        tags: ['utils', 'transitions'],
      );

      testWidgets(
        'slideLeft transition returns SlideTransition',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: child,
            ),
          );
          context = navigatorKey.currentContext!;
          final result = CCTransition.slideLeft.builder(
            context,
            animation,
            secondaryAnimation,
            child,
          );
          expect(result, isA<SlideTransition>());
        },
        tags: ['utils', 'transitions'],
      );

      testWidgets(
        'slideRight transition returns SlideTransition',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: child,
            ),
          );
          context = navigatorKey.currentContext!;
          final result = CCTransition.slideRight.builder(
            context,
            animation,
            secondaryAnimation,
            child,
          );
          expect(result, isA<SlideTransition>());
        },
        tags: ['utils', 'transitions'],
      );

      testWidgets(
        'slideUp transition returns SlideTransition',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: child,
            ),
          );
          context = navigatorKey.currentContext!;
          final result = CCTransition.slideUp.builder(
            context,
            animation,
            secondaryAnimation,
            child,
          );
          expect(result, isA<SlideTransition>());
        },
        tags: ['utils', 'transitions'],
      );

      testWidgets(
        'slideDown transition returns SlideTransition',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: child,
            ),
          );
          context = navigatorKey.currentContext!;
          final result = CCTransition.slideDown.builder(
            context,
            animation,
            secondaryAnimation,
            child,
          );
          expect(result, isA<SlideTransition>());
        },
        tags: ['utils', 'transitions'],
      );

      group(
        'Slide transitions',
        () {
          testWidgets(
            'slideLeft has correct Offset',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: child,
                ),
              );
              context = navigatorKey.currentContext!;
              final result = CCTransition.slideLeft.builder(
                context,
                animation,
                secondaryAnimation,
                child,
              ) as SlideTransition;
              final animationOffset = result.position;
              expect(animationOffset.value, equals(const Offset(1, 0)));

              // Simulate animation completion
              unawaited((animation as AnimationController).forward());
              await tester.pumpAndSettle();

              expect(animationOffset.value, equals(Offset.zero));
            },
            tags: ['utils', 'transitions'],
          );

          testWidgets(
            'slideRight has correct Offset',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: child,
                ),
              );
              context = navigatorKey.currentContext!;
              final result = CCTransition.slideRight.builder(
                context,
                animation,
                secondaryAnimation,
                child,
              ) as SlideTransition;
              final animationOffset = result.position;
              expect(animationOffset.value, equals(const Offset(-1, 0)));

              // Simulate animation completion
              unawaited((animation as AnimationController).forward());
              await tester.pumpAndSettle();

              expect(animationOffset.value, equals(Offset.zero));
            },
            tags: ['utils', 'transitions'],
          );

          testWidgets(
            'slideUp has correct Offset',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: child,
                ),
              );
              context = navigatorKey.currentContext!;
              final result = CCTransition.slideUp.builder(
                context,
                animation,
                secondaryAnimation,
                child,
              ) as SlideTransition;
              final animationOffset = result.position;
              expect(animationOffset.value, equals(const Offset(0, 1)));

              // Simulate animation completion
              unawaited((animation as AnimationController).forward());
              await tester.pumpAndSettle();

              expect(animationOffset.value, equals(Offset.zero));
            },
            tags: ['utils', 'transitions'],
          );

          testWidgets(
            'slideDown has correct Offset',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                CCComponentTestWrapper(
                  navigatorKey: navigatorKey,
                  child: child,
                ),
              );
              context = navigatorKey.currentContext!;
              final result = CCTransition.slideDown.builder(
                context,
                animation,
                secondaryAnimation,
                child,
              ) as SlideTransition;
              final animationOffset = result.position;
              expect(animationOffset.value, equals(const Offset(0, -1)));

              // Simulate animation completion
              unawaited((animation as AnimationController).forward());
              await tester.pumpAndSettle();

              expect(animationOffset.value, equals(Offset.zero));
            },
            tags: ['utils', 'transitions'],
          );
        },
      );
    },
  );
}
