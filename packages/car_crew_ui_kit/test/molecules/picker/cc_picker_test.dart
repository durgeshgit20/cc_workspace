import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../util/cc_component_test_wrapper.dart';

void main() {
  testWidgets('CCDatePicker applies design system theming', (tester) async {
    final navigatorKey = GlobalKey<NavigatorState>();
    Color? primaryColor;
    bool popped = false;

    await tester.pumpWidget(
      CCComponentTestWrapper(
        navigatorKey: navigatorKey,
        child: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: ElevatedButton(
                  key: const Key('open-date-picker'),
                  onPressed: () async {
                    await CCDatePicker.show(
                      context: context,
                      initialDate: DateTime(2024, 1, 1),
                      firstDate: DateTime(2020, 1, 1),
                      lastDate: DateTime(2030, 12, 31),
                      builder: (ctx, child) {
                        primaryColor = Theme.of(ctx).colorScheme.primary;
                        if (!popped) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (Navigator.of(ctx).canPop()) {
                              Navigator.of(ctx).pop();
                            }
                          });
                          popped = true;
                        }
                        return child ?? const SizedBox.shrink();
                      },
                    );
                  },
                  child: null,
                ),
              ),
            );
          },
        ),
      ),
    );

    final rootContext = tester.element(find.byType(Scaffold));
    final expected = rootContext.ccColor.action.primary.active;

    await tester.tap(find.byKey(const Key('open-date-picker')));
    await tester.pumpAndSettle();

    expect(primaryColor, expected);
  });

  testWidgets('CCTimePicker applies design system theming', (tester) async {
    final navigatorKey = GlobalKey<NavigatorState>();
    Color? primaryColor;
    bool popped = false;

    await tester.pumpWidget(
      CCComponentTestWrapper(
        navigatorKey: navigatorKey,
        child: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: ElevatedButton(
                  key: const Key('open-time-picker'),
                  onPressed: () async {
                    await CCTimePicker.show(
                      context: context,
                      initialTime: const TimeOfDay(hour: 8, minute: 0),
                      builder: (ctx, child) {
                        primaryColor = Theme.of(ctx).colorScheme.primary;
                        if (!popped) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (Navigator.of(ctx).canPop()) {
                              Navigator.of(ctx).pop();
                            }
                          });
                          popped = true;
                        }
                        return child ?? const SizedBox.shrink();
                      },
                    );
                  },
                  child: null,
                ),
              ),
            );
          },
        ),
      ),
    );

    final rootContext = tester.element(find.byType(Scaffold));
    final expected = rootContext.ccColor.action.primary.active;

    await tester.tap(find.byKey(const Key('open-time-picker')));
    await tester.pumpAndSettle();

    expect(primaryColor, expected);
  });
}
