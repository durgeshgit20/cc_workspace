part of 'cc_color_foundation.dart';

@immutable
class CCOutlineColor {
  final CCNeutralOutlineColor neutral;
  final CCOutlineSolidColor color;

  const CCOutlineColor._({
    required this.neutral,
    required this.color,
  });

  factory CCOutlineColor.light() => CCOutlineColor._(
        neutral: CCNeutralOutlineColor.light(),
        color: CCOutlineSolidColor.light(),
      );

  factory CCOutlineColor.dark() => CCOutlineColor._(
        neutral: CCNeutralOutlineColor.dark(),
        color: CCOutlineSolidColor.dark(),
      );

  CCOutlineColor lerp(
    CCOutlineColor? other,
    double t,
  ) =>
      CCOutlineColor._(
        neutral: neutral.lerp(other?.neutral, t),
        color: color.lerp(other?.color, t),
      );
}

@immutable
class CCOutlineSolidColor extends CCSemanticColor {
  const CCOutlineSolidColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.success,
    required super.info,
    required super.warning,
  });

  factory CCOutlineSolidColor.light() => CCOutlineSolidColor._(
        primary: CCColorFoundation.outlinePrimary,
        secondary: CCColorFoundation.outlineSecondary,
        error: CCColorFoundation.outlineError,
        info: CCColorFoundation.outlineInfo,
        success: CCColorFoundation.outlineSuccess,
        warning: CCColorFoundation.outlineWarning,
      );

  factory CCOutlineSolidColor.dark() => CCOutlineSolidColor._(
        primary: CCColorFoundation.outlinePrimaryDark,
        secondary: CCColorFoundation.outlineSecondaryDark,
        error: CCColorFoundation.outlineErrorDark,
        info: CCColorFoundation.outlineInfoDark,
        success: CCColorFoundation.outlineSuccessDark,
        warning: CCColorFoundation.outlineWarningDark,
      );

  @override
  CCOutlineSolidColor lerp(
    covariant CCOutlineSolidColor? other,
    double t,
  ) =>
      CCOutlineSolidColor._(
        primary: Color.lerp(primary, other?.primary, t) ?? primary,
        secondary: Color.lerp(secondary, other?.secondary, t) ?? secondary,
        error: Color.lerp(error, other?.error, t) ?? error,
        success: Color.lerp(success, other?.success, t) ?? success,
        info: Color.lerp(info, other?.info, t) ?? info,
        warning: Color.lerp(warning, other?.warning, t) ?? warning,
      );
}
