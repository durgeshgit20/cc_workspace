import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_ui_kit/src/atoms/button/data/data.dart';
import 'package:flutter/material.dart';

enum CCButtonType {
  filled,
  outline,
  ghost;

  ButtonStyleData data(BuildContext context) => switch (this) {
        filled => ButtonStyleData(
            disabledBgColor: context.ccColor.action.gray.disabled,
            disabledFgColor: context.ccColor.text.neutral.disabled,
            disabledBorderColor: context.ccColor.outline.neutral.subtle,
          ),
        outline => ButtonStyleData(
            disabledBgColor: Colors.transparent,
            disabledFgColor: context.ccColor.text.neutral.disabled,
            disabledBorderColor: context.ccColor.outline.neutral.subtle,
          ),
        ghost => ButtonStyleData(
            disabledBgColor: Colors.transparent,
            disabledFgColor: context.ccColor.text.neutral.disabled,
            disabledBorderColor: Colors.transparent,
          ),
      };
}
