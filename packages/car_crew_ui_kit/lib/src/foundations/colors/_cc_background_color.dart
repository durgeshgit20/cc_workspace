part of 'cc_color_foundation.dart';

@immutable
class CCBackgroundColor {
  final CCNeutralBackgroundColor neutral;
  final CCSolidBackgroundColor solid;
  final CCSubtleBackgroundColor subtle;
  final CCCardBackgroundColor card;

  const CCBackgroundColor._({
    required this.neutral,
    required this.solid,
    required this.subtle,
    required this.card,
  });

  factory CCBackgroundColor.light() => CCBackgroundColor._(
        neutral: CCNeutralBackgroundColor.light(),
        solid: CCSolidBackgroundColor.light(),
        subtle: CCSubtleBackgroundColor.light(),
        card: CCCardBackgroundColor.light(),
      );

  factory CCBackgroundColor.dark() => CCBackgroundColor._(
        neutral: CCNeutralBackgroundColor.dark(),
        solid: CCSolidBackgroundColor.dark(),
        subtle: CCSubtleBackgroundColor.dark(),
        card: CCCardBackgroundColor.dark(),
      );

  CCBackgroundColor lerp(
    covariant CCBackgroundColor? other,
    double t,
  ) =>
      CCBackgroundColor._(
        neutral: neutral.lerp(other?.neutral, t),
        solid: solid.lerp(other?.solid, t),
        subtle: subtle.lerp(other?.subtle, t),
        card: card.lerp(other?.card, t),
      );
}

@immutable
class CCCardBackgroundColor {
  final Color main;
  final Color secondary;

  const CCCardBackgroundColor._({
    required this.main,
    required this.secondary,
  });

  factory CCCardBackgroundColor.light() => CCCardBackgroundColor._(
        main: CCColorFoundation.bgCardMain,
        secondary: CCColorFoundation.bgCardSecondary,
      );
  factory CCCardBackgroundColor.dark() => CCCardBackgroundColor._(
        main: CCColorFoundation.bgCardMainDark,
        secondary: CCColorFoundation.bgCardSecondaryDark,
      );

  CCCardBackgroundColor lerp(
    covariant CCCardBackgroundColor? other,
    double t,
  ) =>
      CCCardBackgroundColor._(
        main: Color.lerp(main, other?.main, t) ?? main,
        secondary: Color.lerp(secondary, other?.secondary, t) ?? secondary,
      );
}

@immutable
class CCSolidBackgroundColor extends CCSemanticColor {
  const CCSolidBackgroundColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.success,
    required super.info,
    required super.warning,
  });

  factory CCSolidBackgroundColor.light() => CCSolidBackgroundColor._(
        primary: CCColorFoundation.bgPrimary,
        secondary: CCColorFoundation.bgSecondary,
        error: CCColorFoundation.bgError,
        success: CCColorFoundation.bgSuccess,
        info: CCColorFoundation.bgInfo,
        warning: CCColorFoundation.bgWarning,
      );

  factory CCSolidBackgroundColor.dark() => CCSolidBackgroundColor._(
        primary: CCColorFoundation.bgPrimaryDark,
        secondary: CCColorFoundation.bgSecondaryDark,
        error: CCColorFoundation.bgErrorDark,
        success: CCColorFoundation.bgSuccessDark,
        info: CCColorFoundation.bgInfoDark,
        warning: CCColorFoundation.bgWarningDark,
      );

  @override
  CCSolidBackgroundColor lerp(
    covariant CCSolidBackgroundColor? other,
    double t,
  ) =>
      CCSolidBackgroundColor._(
        primary: Color.lerp(primary, other?.primary, t) ?? primary,
        secondary: Color.lerp(secondary, other?.secondary, t) ?? secondary,
        error: Color.lerp(error, other?.error, t) ?? error,
        success: Color.lerp(success, other?.success, t) ?? success,
        info: Color.lerp(info, other?.info, t) ?? info,
        warning: Color.lerp(warning, other?.warning, t) ?? warning,
      );
}

@immutable
class CCSubtleBackgroundColor extends CCSemanticColor {
  const CCSubtleBackgroundColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.success,
    required super.info,
    required super.warning,
  });

  factory CCSubtleBackgroundColor.light() => CCSubtleBackgroundColor._(
        primary: CCColorFoundation.bgSubtlePrimary,
        secondary: CCColorFoundation.bgSubtleSecondary,
        error: CCColorFoundation.bgSubtleError,
        success: CCColorFoundation.bgSubtleSuccess,
        info: CCColorFoundation.bgSubtleInfo,
        warning: CCColorFoundation.bgSubtleWarning,
      );

  factory CCSubtleBackgroundColor.dark() => CCSubtleBackgroundColor._(
        primary: CCColorFoundation.bgSubtlePrimaryDark,
        secondary: CCColorFoundation.bgSubtleSecondaryDark,
        error: CCColorFoundation.bgSubtleErrorDark,
        success: CCColorFoundation.bgSubtleSuccessDark,
        info: CCColorFoundation.bgSubtleInfoDark,
        warning: CCColorFoundation.bgSubtleWarningDark,
      );

  @override
  CCSubtleBackgroundColor lerp(
    covariant CCSubtleBackgroundColor? other,
    double t,
  ) =>
      CCSubtleBackgroundColor._(
        primary: Color.lerp(primary, other?.primary, t) ?? primary,
        secondary: Color.lerp(secondary, other?.secondary, t) ?? secondary,
        error: Color.lerp(error, other?.error, t) ?? error,
        success: Color.lerp(success, other?.success, t) ?? success,
        info: Color.lerp(info, other?.info, t) ?? info,
        warning: Color.lerp(warning, other?.warning, t) ?? warning,
      );
}
