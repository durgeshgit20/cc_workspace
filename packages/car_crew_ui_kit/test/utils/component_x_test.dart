import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util/cc_component_test_wrapper.dart';

void main() {
  setUp(TestWidgetsFlutterBinding.ensureInitialized);
  group(
    'SkeletonExtension',
    () {
      testWidgets(
        'skeletonize creates a Skeletonizer widget',
        (WidgetTester tester) async {
          final widget = Container();
          await tester.pumpWidget(
            CCComponentTestWrapper(
              child: widget,
            ),
          );
          await tester.pumpAndSettle();

          final skeletonized = widget.skeletonize();

          expect(skeletonized, isA<Skeletonizer>());
        },
        tags: ['extensions', 'utils'],
      );

      testWidgets(
        'skeletonize applies custom parameters',
        (WidgetTester tester) async {
          final widget = Container();
          await tester.pumpWidget(
            CCComponentTestWrapper(
              child: widget,
            ),
          );
          await tester.pumpAndSettle();
          const customEffect = ShimmerEffect(
            duration: Duration(milliseconds: 100),
          );
          final customColor = Colors.grey[300];

          final skeletonized = widget.skeletonize(
            enabled: false,
            paintingEffect: customEffect,
            containerColor: customColor,
            ignoreContainer: true,
          );

          expect(skeletonized, isA<Skeletonizer>());
          expect(skeletonized.enabled, isFalse);
          expect(skeletonized.effect, equals(customEffect));
          expect(skeletonized.containersColor, equals(customColor));
          expect(skeletonized.ignoreContainers, isTrue);
        },
        tags: ['extensions', 'utils'],
      );

      testWidgets(
        'skeletonize wraps the original widget',
        (WidgetTester tester) async {
          const widget = Text('Test');

          await tester.pumpWidget(
            const CCComponentTestWrapper(
              child: widget,
            ),
          );
          await tester.pumpAndSettle();

          final skeletonized = widget.skeletonize();

          expect(find.byType(Text), findsOneWidget);
          expect(find.text('Test'), findsOneWidget);
          expect(skeletonized.child, equals(widget));
        },
        tags: ['extensions', 'utils'],
      );

      testWidgets(
        'skeletonize applies correct text bone border radius',
        (WidgetTester tester) async {
          const widget = Text('Test');
          await tester.pumpWidget(
            const CCComponentTestWrapper(
              child: widget,
            ),
          );
          await tester.pumpAndSettle();

          final skeletonized = widget.skeletonize();

          expect(
            skeletonized.textBoneBorderRadius,
            isA<TextBoneBorderRadius>(),
          );
          expect(
            skeletonized.textBoneBorderRadius!.borderRadius,
            isA<BorderRadius>(),
          );
        },
        tags: ['extensions', 'utils'],
      );
    },
  );
}
