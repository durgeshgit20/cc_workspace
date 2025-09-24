import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../util/cc_component_test_wrapper.dart';

void main() {
  testWidgets('CCCheckbox forwards taps to onChanged', (tester) async {
    bool? value = false;

    await tester.pumpWidget(
      CCComponentTestWrapper(
        child: StatefulBuilder(
          builder: (context, setState) => Scaffold(
            body: Center(
              child: CCCheckbox(
                value: value,
                label: 'Accept terms',
                onChanged: (newValue) => setState(() => value = newValue),
              ),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Accept terms'));
    await tester.pumpAndSettle();

    expect(value, isTrue);
  });
}
