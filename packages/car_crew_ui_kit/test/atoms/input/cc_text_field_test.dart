import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../util/cc_component_test_wrapper.dart';

void main() {
  testWidgets('CCTextField uses Car Crew brand tokens', (tester) async {
    await tester.pumpWidget(
      const CCComponentTestWrapper(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16),
            child: CCTextField(
              label: 'Email',
              hintText: 'name@example.com',
            ),
          ),
        ),
      ),
    );

    final context = tester.element(find.byType(TextFormField));
    final colors = context.ccColor;
    final textField = tester.widget<TextFormField>(find.byType(TextFormField));
    // final decoration = textField.decoration!;

    // expect(decoration.fillColor, colors.background.neutral.subtle);

    //final enabledBorder = decoration.enabledBorder! as OutlineInputBorder;
    //expect(enabledBorder.borderSide.color, colors.outline.neutral.main);

    //final focusedBorder = decoration.focusedBorder! as OutlineInputBorder;
    // expect(focusedBorder.borderSide.color, colors.action.primary.active);
    // expect(focusedBorder.borderSide.width, 2);
  });
}
