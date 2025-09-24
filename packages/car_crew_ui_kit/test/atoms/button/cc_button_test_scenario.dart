import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

import '../../util/cc_component_test_wrapper.dart';
import '../../util/widget_test_scenario_model.dart';

List<WidgetTestScenarioModel> ccButtonTestScenario = [
  WidgetTestScenarioModel(
    title: 'Debounce behavior - shows loading spinner and disables '
        'button when clicked',
    widget: CCComponentTestWrapper(
      child: Scaffold(
        body: CCButton(
          label: 'Test Button',
          onPressed: () async {
            await Future<void>.delayed(const Duration(seconds: 1));
          },
        ),
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'Non-debounce behavior - button remains enabled and no '
        'loading spinner when clicked',
    widget: CCComponentTestWrapper(
      child: Scaffold(
        body: CCButton(
          label: 'Test Button',
          onPressed: () async {
            await Future<void>.delayed(
              const Duration(milliseconds: 100),
            );
          },
          debounce: false,
        ),
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton.primary creates a primary button',
    widget: CCComponentTestWrapper(
      child: CCButton.primary(
        label: 'Primary Button',
        onPressed: () async {},
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton.secondary creates a secondary button',
    widget: CCComponentTestWrapper(
      child: CCButton.secondary(
        label: 'Secondary Button',
        onPressed: () async {},
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton.tertiary creates a tertiary button',
    widget: CCComponentTestWrapper(
      child: CCButton.tertiary(
        label: 'Tertiary Button',
        onPressed: () async {},
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton.danger creates a danger button',
    widget: CCComponentTestWrapper(
      child: CCButton.danger(
        label: 'Danger Button',
        onPressed: () async {},
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton respects size parameter',
    widget: CCComponentTestWrapper(
      child: CCButton(
        label: 'Small Button',
        size: CCButtonSize.sm,
        onPressed: () async {},
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton displays leading and trailing widgets',
    widget: CCComponentTestWrapper(
      child: CCButton(
        label: 'Icon Button',
        leading: const Icon(Icons.star),
        trailing: const Icon(Icons.arrow_forward),
        onPressed: () async {},
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton wraps content when wrap is true',
    widget: CCComponentTestWrapper(
      child: CCButton(
        label: 'Wrapped Button',
        onPressed: () async {},
      ),
    ),
  ),
  WidgetTestScenarioModel(
    title: 'CCButton does not wrap content when wrap is false',
    widget: CCComponentTestWrapper(
      child: CCButton(
        label: 'Unwrapped Button',
        wrap: false,
        onPressed: () async {},
      ),
    ),
  ),
];
