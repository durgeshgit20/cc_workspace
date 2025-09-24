import 'dart:io';

import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../util/cc_component_test_wrapper.dart';
import '../../util/widget_test_scenario_model.dart';

void main() {
  setUpAll(
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await loadAppFonts();
      final cupertinoIconsFontLoader = FontLoader(
        'packages/cupertino_icons/CupertinoIcons',
      )..addFont(
          File('test/assets/fonts/CupertinoIcons.ttf')
              .readAsBytes()
              .then((bytes) => ByteData.view(Uint8List.fromList(bytes).buffer)),
        );
      await cupertinoIconsFontLoader.load();
    },
  );

  List<WidgetTestScenarioModel> generateTestScenario({
    CCButtonType buttonType = CCButtonType.filled,
    CCButtonSize buttonSize = CCButtonSize.md,
    CCButtonVariant buttonVariant = CCButtonVariant.primary,
  }) =>
      [
        WidgetTestScenarioModel(
          title: 'enable: true (default)',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'enable: false',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            enable: false,
          ),
        ),
        WidgetTestScenarioModel(
          title: 'wrap: true (default)',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'wrap: false',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            wrap: false,
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'short label',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'AB',
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'long label',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'This is a very long text used as a label for this button',
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'onPressed: null (default)',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
          ),
        ),
        WidgetTestScenarioModel(
          title: 'onPressed: async function',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'with leading icon',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            leading: const Icon(
              CupertinoIcons.plus,
              size: 16,
            ),
            label: 'Label',
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'with trailing icon',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            trailing: const Icon(
              CupertinoIcons.plus,
              size: 16,
            ),
            debounce: false,
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'both icons & wrap: true',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            trailing: const Icon(
              CupertinoIcons.minus,
              size: 16,
            ),
            leading: const Icon(
              CupertinoIcons.plus,
              size: 16,
            ),
            debounce: false,
            onPressed: () async {},
          ),
        ),
        WidgetTestScenarioModel(
          title: 'both icons & wrap: false',
          widget: CCButton(
            variant: buttonVariant,
            type: buttonType,
            size: buttonSize,
            label: 'Label',
            wrap: false,
            trailing: const Icon(
              CupertinoIcons.minus,
              size: 16,
            ),
            leading: const Icon(
              CupertinoIcons.plus,
              size: 16,
            ),
            debounce: false,
            onPressed: () async {},
          ),
        ),
      ];

  group(
    'CCButton',
    () {
      testGoldens(
        'Render Text',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            const Scaffold(
              body: Center(
                child: Text('Render Text'),
              ),
            ),
            wrapper: (child) => CCComponentTestWrapper(child: child),
          );

          await screenMatchesGolden(tester, 'cc_button_text_render');
        },
        tags: ['atoms', 'golden'],
      );

      group(
        'CCButtonVariant.primary',
        () {
          group(
            'CCButtonType.filled',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario();
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_filled_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.outlined',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.outline,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.outline,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.outline,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.outline,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.outline,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_outlined_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.ghost',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.ghost,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.ghost,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.ghost,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.ghost,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.ghost,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.primary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_primary_ghost_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );
        },
      );

      group(
        'CCButtonVariant.secondary',
        () {
          group(
            'CCButtonType.filled',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_filled_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.outlined',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_outlined_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.ghost',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.secondary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.secondary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_secondary_ghost_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );
        },
      );

      group(
        'CCButtonVariant.tertiary',
        () {
          group(
            'CCButtonType.filled',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_filled_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.outlined',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_outlined_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.ghost',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.tertiary,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.tertiary',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_tertiary_ghost_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );
        },
      );

      group(
        'CCButtonVariant.danger',
        () {
          group(
            'CCButtonType.filled',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.filled',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_filled_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.outlined',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.outline,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.outline',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_outlined_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );

          group(
            'CCButtonType.ghost',
            () {
              group(
                'CCButtonSize.md',
                () {
                  final testScenarios = generateTestScenario(
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_md_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.md',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_md_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.sm',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.sm,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_sm_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.sm',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_sm_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xs',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xs,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2.5,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_xs_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 750),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xs',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_xs_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.lg',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.lg,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_lg_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.lg',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_lg_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );

              group(
                'CCButtonSize.xl',
                () {
                  final testScenarios = generateTestScenario(
                    buttonSize: CCButtonSize.xl,
                    buttonType: CCButtonType.ghost,
                    buttonVariant: CCButtonVariant.danger,
                  );
                  final builder = GoldenBuilder.grid(
                    columns: 2,
                    widthToHeightRatio: 2,
                    bgColor: Colors.transparent,
                  )
                    ..addScenario(
                      testScenarios[0].title,
                      testScenarios[0].widget,
                    )
                    ..addScenario(
                      testScenarios[1].title,
                      testScenarios[1].widget,
                    )
                    ..addScenario(
                      testScenarios[2].title,
                      testScenarios[2].widget,
                    )
                    ..addScenario(
                      testScenarios[3].title,
                      testScenarios[3].widget,
                    )
                    ..addScenario(
                      testScenarios[4].title,
                      testScenarios[4].widget,
                    )
                    ..addScenario(
                      testScenarios[5].title,
                      testScenarios[5].widget,
                    )
                    ..addScenario(
                      testScenarios[6].title,
                      testScenarios[6].widget,
                    )
                    ..addScenario(
                      testScenarios[7].title,
                      testScenarios[7].widget,
                    )
                    ..addScenario(
                      testScenarios[8].title,
                      testScenarios[8].widget,
                    )
                    ..addScenario(
                      testScenarios[9].title,
                      testScenarios[9].widget,
                    )
                    ..addScenario(
                      testScenarios[10].title,
                      testScenarios[10].widget,
                    )
                    ..addScenario(
                      testScenarios[11].title,
                      testScenarios[11].widget,
                    );

                  testGoldens(
                    'LightTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_xl_light',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );

                  testGoldens(
                    'DarkTheme',
                    (WidgetTester tester) async {
                      await tester.pumpWidgetBuilder(
                        builder.build(),
                        surfaceSize: const Size(480, 950),
                        wrapper: (child) => CCComponentTestWrapper(
                          isDarkMode: true,
                          child: Builder(
                            builder: (context) => Scaffold(
                              backgroundColor:
                                  context.ccColor.background.neutral.white,
                              body: Column(
                                children: [
                                  Text(
                                    'CCButtonVariant.danger',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonSize.xl',
                                    style: CCTypography.heading(),
                                  ),
                                  Text(
                                    'CCButtonType.ghost',
                                    style: CCTypography.heading(),
                                  ),
                                  Expanded(child: child),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                      await screenMatchesGolden(
                        tester,
                        'cc_button_danger_ghost_xl_dark',
                      );
                    },
                    tags: ['atoms', 'golden'],
                  );
                },
              );
            },
          );
        },
      );
    },
  );
}
