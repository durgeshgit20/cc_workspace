part of 'cc_color_foundation.dart';

@immutable
class CCTextColor {
  final CCNeutralTextColor neutral;
  final CCSolidTextColor color;
  final CCOnBadgeTextColor onBadge;

  const CCTextColor._({
    required this.neutral,
    required this.color,
    required this.onBadge,
  });

  factory CCTextColor.light() => CCTextColor._(
        neutral: CCNeutralTextColor.light(),
        color: CCSolidTextColor.light(),
        onBadge: CCOnBadgeTextColor.light(),
      );

  factory CCTextColor.dark() => CCTextColor._(
        neutral: CCNeutralTextColor.dark(),
        color: CCSolidTextColor.dark(),
        onBadge: CCOnBadgeTextColor.dark(),
      );

  CCTextColor lerp(
    covariant CCTextColor? other,
    double t,
  ) {
    if (other is! CCTextColor) {
      return this;
    }

    return CCTextColor._(
      neutral: neutral.lerp(other.neutral, t),
      color: color.lerp(other.color, t),
      onBadge: onBadge.lerp(other.onBadge, t),
    );
  }
}

@immutable
class CCNeutralTextColor extends CCNeutralForegroundColor {
  const CCNeutralTextColor._({
    required super.main,
    required super.subtle,
    required super.strong,
    required super.disabled,
    required super.inverse,
    required super.onImage,
  });

  factory CCNeutralTextColor.light() => CCNeutralTextColor._(
        main: CCColorFoundation.textMain,
        subtle: CCColorFoundation.textSubtle,
        strong: CCColorFoundation.textStrong,
        disabled: CCColorFoundation.textDisable,
        inverse: CCColorFoundation.textInverse,
        onImage: CCColorFoundation.textOnImage,
      );

  factory CCNeutralTextColor.dark() => CCNeutralTextColor._(
        main: CCColorFoundation.textMainDark,
        subtle: CCColorFoundation.textSubtleDark,
        strong: CCColorFoundation.textStrongDark,
        disabled: CCColorFoundation.textDisableDark,
        inverse: CCColorFoundation.textInverseDark,
        onImage: CCColorFoundation.textOnImageDark,
      );

  @override
  CCNeutralTextColor lerp(
    covariant CCNeutralTextColor? other,
    double t,
  ) {
    if (other is! CCNeutralTextColor) {
      return this;
    }

    return CCNeutralTextColor._(
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
class CCSolidTextColor extends CCSemanticColor {
  const CCSolidTextColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.success,
    required super.info,
    required super.warning,
  });

  factory CCSolidTextColor.light() => CCSolidTextColor._(
        primary: CCColorFoundation.textPrimary,
        secondary: CCColorFoundation.textSecondary,
        error: CCColorFoundation.textError,
        success: CCColorFoundation.textSuccess,
        info: CCColorFoundation.textInfo,
        warning: CCColorFoundation.textWarning,
      );

  factory CCSolidTextColor.dark() => CCSolidTextColor._(
        primary: CCColorFoundation.textPrimaryDark,
        secondary: CCColorFoundation.textSecondaryDark,
        error: CCColorFoundation.textErrorDark,
        success: CCColorFoundation.textSuccessDark,
        info: CCColorFoundation.textInfoDark,
        warning: CCColorFoundation.textWarningDark,
      );

  @override
  CCSolidTextColor lerp(
    covariant CCSolidTextColor? other,
    double t,
  ) {
    if (other is! CCSolidTextColor) {
      return this;
    }

    return CCSolidTextColor._(
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
class CCOnBadgeTextColor extends CCSemanticColor {
  const CCOnBadgeTextColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.success,
    required super.info,
    required super.warning,
  });

  factory CCOnBadgeTextColor.light() => CCOnBadgeTextColor._(
        primary: CCColorFoundation.textBadgePrimary,
        secondary: CCColorFoundation.textBadgeSecondary,
        error: CCColorFoundation.textBadgeError,
        success: CCColorFoundation.textBadgeSuccess,
        info: CCColorFoundation.textBadgeInfo,
        warning: CCColorFoundation.textBadgeWarning,
      );

  factory CCOnBadgeTextColor.dark() => CCOnBadgeTextColor._(
        primary: CCColorFoundation.textBadgePrimaryDark,
        secondary: CCColorFoundation.textBadgeSecondaryDark,
        error: CCColorFoundation.textBadgeErrorDark,
        success: CCColorFoundation.textBadgeSuccessDark,
        info: CCColorFoundation.textBadgeInfoDark,
        warning: CCColorFoundation.textBadgeWarningDark,
      );

  @override
  CCOnBadgeTextColor lerp(
    covariant CCOnBadgeTextColor? other,
    double t,
  ) {
    if (other is! CCOnBadgeTextColor) {
      return this;
    }

    return CCOnBadgeTextColor._(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      error: Color.lerp(error, other.error, t) ?? error,
      success: Color.lerp(success, other.success, t) ?? success,
      info: Color.lerp(info, other.info, t) ?? info,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
    );
  }
}
