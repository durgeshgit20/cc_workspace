import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCDatePicker {
  static Future<DateTime?> show({
    required BuildContext context,
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
    DatePickerMode initialCalendarMode = DatePickerMode.day,
    Locale? locale,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    TextDirection? textDirection,
    SelectableDayPredicate? selectableDayPredicate,
    EntryModeChangeCallback? onEntryModeChanged,
    ValueChanged<DatePickerEntryMode>? onDatePickerModeChange,
    TransitionBuilder? builder,
    String? helpText,
    String? cancelText,
    String? confirmText,
    String? errorFormatText,
    String? errorInvalidText,
    String? fieldHintText,
    String? fieldLabelText,
    Offset? anchorPoint,
    bool barrierDismissible = true,
  }) {
    return showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      initialEntryMode: initialEntryMode,
      initialDatePickerMode: initialCalendarMode,
      locale: locale,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      textDirection: textDirection,
      selectableDayPredicate: selectableDayPredicate,
      // onEntryModeChanged: onEntryModeChanged,
      onDatePickerModeChange: onDatePickerModeChange,
      helpText: helpText,
      cancelText: cancelText,
      confirmText: confirmText,
      errorFormatText: errorFormatText,
      errorInvalidText: errorInvalidText,
      fieldHintText: fieldHintText,
      fieldLabelText: fieldLabelText,
      anchorPoint: anchorPoint,
      barrierDismissible: barrierDismissible,
      builder: (context, child) {
        final themedChild = _PickerTheming.wrap(context, child);
        return builder?.call(context, themedChild) ?? themedChild;
      },
    );
  }
}

class CCTimePicker {
  static Future<TimeOfDay?> show({
    required BuildContext context,
    required TimeOfDay initialTime,
    TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    TransitionBuilder? builder,
    String? helpText,
    String? cancelText,
    String? confirmText,
    EntryModeChangeCallback? onEntryModeChanged,
    Offset? anchorPoint,
    bool barrierDismissible = true,
  }) {
    return showTimePicker(
      context: context,
      initialTime: initialTime,
      initialEntryMode: initialEntryMode,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      helpText: helpText,
      cancelText: cancelText,
      confirmText: confirmText,
      anchorPoint: anchorPoint,
      barrierDismissible: barrierDismissible,
      onEntryModeChanged: onEntryModeChanged,
      builder: (context, child) {
        final themedChild = _PickerTheming.wrap(context, child);
        return builder?.call(context, themedChild) ?? themedChild;
      },
    );
  }
}

class _PickerTheming {
  static Widget wrap(BuildContext context, Widget? child) {
    final theme = Theme.of(context);
    final colors = context.ccColor;

    final textButtonStyle = TextButton.styleFrom(
      foregroundColor: colors.action.primary.active,
      textStyle: CCTypography.body(
        color: colors.action.primary.active,
      ).copyWith(fontWeight: FontWeight.w500),
    );

    final inputDecorationTheme = _inputDecorationTheme(context);

    final themedData = theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        primary: colors.action.primary.active,
        onPrimary: Colors.white,
        surface: colors.background.card.main,
        onSurface: colors.text.neutral.main,
      ),
      dialogTheme: theme.dialogTheme.copyWith(
        backgroundColor: colors.background.card.main,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CCBorderRadius.md),
        ),
      ),
      textButtonTheme: TextButtonThemeData(style: textButtonStyle),
      inputDecorationTheme: inputDecorationTheme,
    );

    return Theme(
      data: themedData,
      child: child ?? const SizedBox.shrink(),
    );
  }

  static InputDecorationTheme _inputDecorationTheme(BuildContext context) {
    final colors = context.ccColor;
    final borderRadius = BorderRadius.circular(CCBorderRadius.sm);

    OutlineInputBorder outline(Color color, {double width = 1}) =>
        OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: color, width: width),
        );

    return InputDecorationTheme(
      filled: true,
      fillColor: colors.background.neutral.subtle,
      contentPadding: EdgeInsets.symmetric(
        horizontal: CCSize.size16.w,
        vertical: CCSize.size12.h,
      ),
      labelStyle: CCTypography.bodySm(
        color: colors.text.neutral.subtle,
      ),
      hintStyle: CCTypography.bodySm(
        color: colors.text.neutral.subtle,
      ),
      helperStyle: CCTypography.bodyXs(
        color: colors.text.neutral.subtle,
      ),
      errorStyle: CCTypography.bodyXs(
        color: colors.text.color.error,
      ),
      enabledBorder: outline(colors.outline.neutral.main),
      focusedBorder: outline(colors.action.primary.active, width: 2),
      disabledBorder: outline(colors.outline.neutral.subtle),
      errorBorder: outline(colors.background.solid.error),
      focusedErrorBorder: outline(colors.background.solid.error, width: 2),
    );
  }
}
