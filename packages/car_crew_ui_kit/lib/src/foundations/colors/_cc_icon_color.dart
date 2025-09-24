part of 'cc_color_foundation.dart';

@immutable
class CCIconColor {
  final CCNeutralIconColor neutral;
  final CCSolidIconColor color;
  final CCOnBadgeIconColor onBadge;

  const CCIconColor._({
    required this.neutral,
    required this.color,
    required this.onBadge,
  });

  factory CCIconColor.light() => CCIconColor._(
        neutral: CCNeutralIconColor.light(),
        color: CCSolidIconColor.light(),
        onBadge: CCOnBadgeIconColor.light(),
      );

  factory CCIconColor.dark() => CCIconColor._(
        neutral: CCNeutralIconColor.dark(),
        color: CCSolidIconColor.dark(),
        onBadge: CCOnBadgeIconColor.dark(),
      );

  CCIconColor lerp(
    covariant CCIconColor? other,
    double t,
  ) {
    if (other is! CCIconColor) {
      return this;
    }

    return CCIconColor._(
      neutral: neutral.lerp(other.neutral, t),
      color: color.lerp(other.color, t),
      onBadge: onBadge.lerp(other.onBadge, t),
    );
  }
}

@immutable
class CCNeutralIconColor extends CCNeutralForegroundColor {
  const CCNeutralIconColor._({
    required super.main,
    required super.subtle,
    required super.strong,
    required super.disabled,
    required super.inverse,
    required super.onImage,
  });

  factory CCNeutralIconColor.light() => CCNeutralIconColor._(
        main: CCColorFoundation.iconMain,
        subtle: CCColorFoundation.iconSubtle,
        strong: CCColorFoundation.iconStrong,
        disabled: CCColorFoundation.iconDisable,
        inverse: CCColorFoundation.iconInverse,
        onImage: CCColorFoundation.iconOnImage,
      );

  factory CCNeutralIconColor.dark() => CCNeutralIconColor._(
        main: CCColorFoundation.iconMainDark,
        subtle: CCColorFoundation.iconSubtleDark,
        strong: CCColorFoundation.iconStrongDark,
        disabled: CCColorFoundation.iconDisableDark,
        inverse: CCColorFoundation.iconInverseDark,
        onImage: CCColorFoundation.iconOnImageDark,
      );

  @override
  CCNeutralIconColor lerp(
    covariant CCNeutralIconColor? other,
    double t,
  ) {
    if (other is! CCNeutralIconColor) {
      return this;
    }

    return CCNeutralIconColor._(
      main: Color.lerp(main, other.main, t) ?? main,
      subtle: Color.lerp(subtle, other.subtle, t) ?? subtle,
      strong: Color.lerp(strong, other.strong, t) ?? strong,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
      inverse: Color.lerp(inverse, other.inverse, t) ?? inverse,
      onImage: Color.lerp(onImage, other.onImage, t) ?? onImage,
    );
  }
}

@immutable
class CCSolidIconColor extends CCSemanticColor {
  const CCSolidIconColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.success,
    required super.info,
    required super.warning,
  });

  factory CCSolidIconColor.light() => CCSolidIconColor._(
        primary: CCColorFoundation.iconPrimary,
        secondary: CCColorFoundation.iconSecondary,
        error: CCColorFoundation.iconError,
        success: CCColorFoundation.iconSuccess,
        info: CCColorFoundation.iconInfo,
        warning: CCColorFoundation.iconWarning,
      );

  factory CCSolidIconColor.dark() => CCSolidIconColor._(
        primary: CCColorFoundation.iconPrimaryDark,
        secondary: CCColorFoundation.iconSecondaryDark,
        error: CCColorFoundation.iconErrorDark,
        success: CCColorFoundation.iconSuccessDark,
        info: CCColorFoundation.iconInfoDark,
        warning: CCColorFoundation.iconWarningDark,
      );

  @override
  CCSolidIconColor lerp(
    covariant CCSolidIconColor? other,
    double t,
  ) {
    if (other is! CCSolidIconColor) {
      return this;
    }

    return CCSolidIconColor._(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      error: Color.lerp(error, other.error, t) ?? error,
      success: Color.lerp(success, other.success, t) ?? success,
      info: Color.lerp(info, other.info, t) ?? info,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
    );
  }
}

@immutable
class CCOnBadgeIconColor extends CCSemanticColor {
  const CCOnBadgeIconColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.success,
    required super.info,
    required super.warning,
  });

  factory CCOnBadgeIconColor.light() => CCOnBadgeIconColor._(
        primary: CCColorFoundation.iconBadgePrimary,
        secondary: CCColorFoundation.iconBadgeSecondary,
        error: CCColorFoundation.iconBadgeError,
        success: CCColorFoundation.iconBadgeSuccess,
        info: CCColorFoundation.iconBadgeInfo,
        warning: CCColorFoundation.iconBadgeWarning,
      );

  factory CCOnBadgeIconColor.dark() => CCOnBadgeIconColor._(
        primary: CCColorFoundation.iconBadgePrimaryDark,
        secondary: CCColorFoundation.iconBadgeSecondaryDark,
        error: CCColorFoundation.iconBadgeErrorDark,
        success: CCColorFoundation.iconBadgeSuccessDark,
        info: CCColorFoundation.iconBadgeInfoDark,
        warning: CCColorFoundation.iconBadgeWarningDark,
      );

  @override
  CCOnBadgeIconColor lerp(
    covariant CCOnBadgeIconColor? other,
    double t,
  ) {
    if (other is! CCOnBadgeIconColor) {
      return this;
    }

    return CCOnBadgeIconColor._(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      error: Color.lerp(error, other.error, t) ?? error,
      success: Color.lerp(success, other.success, t) ?? success,
      info: Color.lerp(info, other.info, t) ?? info,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
    );
  }
}
