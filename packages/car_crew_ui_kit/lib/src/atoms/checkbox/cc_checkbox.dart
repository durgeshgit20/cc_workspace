import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCCheckbox extends StatelessWidget {
  const CCCheckbox({
    required this.value,
    super.key,
    this.onChanged,
    this.label,
    this.labelWidget,
    this.tristate = false,
    this.padding,
    this.controlAffinity = ListTileControlAffinity.leading,
    this.isDense = false,
  }) : assert(
          label == null || labelWidget == null,
          'Provide either label or labelWidget, not both.',
        );

  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final String? label;
  final Widget? labelWidget;
  final bool tristate;
  final EdgeInsetsGeometry? padding;
  final ListTileControlAffinity controlAffinity;
  final bool isDense;

  @override
  Widget build(BuildContext context) {
    final colors = context.ccColor;
    final theme = Theme.of(context);

    Widget? effectiveLabel = labelWidget;
    if (effectiveLabel == null && label != null) {
      effectiveLabel = Text(
        label!,
        style: CCTypography.body(
          color: colors.text.neutral.main,
        ),
      );
    }

    final checkboxTheme = theme.checkboxTheme.copyWith(
      visualDensity: isDense ? VisualDensity.compact : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CCBorderRadius.xs),
      ),
      side: MaterialStateBorderSide.resolveWith((states) {
        final isDisabled = states.contains(MaterialState.disabled);
        final isSelected = states.contains(MaterialState.selected);
        final borderColor = isDisabled
            ? colors.outline.neutral.subtle
            : isSelected
                ? colors.action.primary.active
                : colors.outline.neutral.main;
        return BorderSide(
          color: borderColor,
          width: 1.5,
        );
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return colors.action.primary.disabled;
        }
        if (states.contains(MaterialState.selected)) {
          return colors.action.primary.active;
        }
        return colors.background.neutral.subtle;
      }),
      checkColor: MaterialStateProperty.all(
        colors.background.neutral.white,
      ),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) => colors.action.primary.active.withOpacity(0.08),
      ),
    );

    final tile = CheckboxListTile(
      value: value,
      onChanged: onChanged,
      tristate: tristate,
      dense: isDense,
      contentPadding: EdgeInsets.zero,
      controlAffinity: controlAffinity,
      title: effectiveLabel,
    );

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Theme(
        data: theme.copyWith(checkboxTheme: checkboxTheme),
        child: tile,
      ),
    );
  }
}
