import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_ui_kit/src/atoms/button/data/data.dart';
import 'package:flutter/material.dart';

enum CCButtonVariant {
  primary,
  secondary,
  tertiary,
  danger;

  ButtonVariantData data(BuildContext context) => switch (this) {
        primary => ButtonVariantData(
            backgroundColor: context.ccColor.background.solid.primary,
            outlineBgColor: Colors.transparent,
            outlineBorderColor: context.ccColor.background.solid.primary,
            borderColor: context.ccColor.background.solid.primary,
            outlineFgColor: context.ccColor.text.color.primary,
            foregroundColor: Colors.white,
          ),
        secondary => ButtonVariantData(
            backgroundColor: context.ccColor.background.card.main,
            outlineBgColor: context.ccColor.background.card.main,
            outlineBorderColor: context.ccColor.background.solid.primary,
            borderColor: context.ccColor.background.solid.primary,
            outlineFgColor: context.ccColor.text.color.primary,
            foregroundColor: context.ccColor.text.color.primary,
          ),
        tertiary => ButtonVariantData(
            backgroundColor: context.ccColor.background.neutral.strong,
            outlineBgColor: Colors.transparent,
            outlineBorderColor: context.ccColor.background.neutral.strong,
            borderColor: context.ccColor.outline.neutral.strong,
            outlineFgColor: context.ccColor.text.neutral.strong,
            foregroundColor: context.ccColor.text.neutral.main,
          ),
        danger => ButtonVariantData(
            backgroundColor: context.ccColor.background.solid.error,
            outlineBgColor: Colors.transparent,
            outlineBorderColor: context.ccColor.background.solid.error,
            borderColor: context.ccColor.background.solid.error,
            outlineFgColor: context.ccColor.text.color.error,
            foregroundColor: Colors.white,
          ),
      };
}
