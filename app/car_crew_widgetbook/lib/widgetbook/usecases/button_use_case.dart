import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/widgetbook/pages/pages.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Primary',
  type: CCButton,
)
Widget primaryButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      CCButtonVariant.primary,
    );

@UseCase(
  name: 'Secondary',
  type: CCButton,
)
Widget secondaryButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      CCButtonVariant.secondary,
    );

@UseCase(
  name: 'Tertiary',
  type: CCButton,
)
Widget tertiaryButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      CCButtonVariant.tertiary,
    );

@UseCase(
  name: 'Danger',
  type: CCButton,
)
Widget dangerButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      CCButtonVariant.danger,
    );

Widget _buildButtonUseCase(
  BuildContext context,
  CCButtonVariant variant,
) =>
    ButtonPage(
      label: context.knobs.string(
        label: 'Label',
        description: 'Label to show on button',
        initialValue: 'Button',
      ),
      wrap: context.knobs.boolean(
        label: 'Wrap',
        description: 'Set whether to wrap button width based on its content.',
        initialValue: true,
      ),
      size: context.knobs.list(
        label: 'Button Size',
        description: 'Size of the button from CCButtonSize enum.',
        options: CCButtonSize.values,
        initialOption: CCButtonSize.md,
      ),
      type: context.knobs.list(
        label: 'Button Type',
        description: 'Type of the button from CCButtonType enum.',
        options: CCButtonType.values,
        initialOption: CCButtonType.filled,
      ),
      variant: variant,
      enable: context.knobs.boolean(
        label: 'Enable',
        description: 'Set whether to enable button or not.',
        initialValue: true,
      ),
      debounce: context.knobs.boolean(
        label: 'Debounce',
        description: 'Set whether to debounce button click or not.',
        initialValue: true,
      ),
      showLeading: context.knobs.boolean(
        label: 'Leading',
        description: 'Show leading Widget.',
      ),
      showTrailing: context.knobs.boolean(
        label: 'Trailing',
        description: 'Show trailing Widget.',
      ),
    );
