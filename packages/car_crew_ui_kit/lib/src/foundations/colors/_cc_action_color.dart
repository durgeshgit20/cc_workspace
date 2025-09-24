part of 'cc_color_foundation.dart';

@immutable
abstract class CCBaseActionColor {
  final Color active;
  final Color hover;
  final Color disabled;

  const CCBaseActionColor({
    required this.active,
    required this.hover,
    required this.disabled,
  });

  CCBaseActionColor lerp(
    covariant CCBaseActionColor? other,
    double t,
  );
}

@immutable
class CCActionColor {
  final CCActionPrimaryColor primary;
  final CCActionSecondaryColor secondary;
  final CCActionGrayColor gray;
  final CCActionWhiteColor white;
  final CCActionErrorColor error;
  final CCActionSuccessColor success;

  const CCActionColor._({
    required this.primary,
    required this.secondary,
    required this.gray,
    required this.white,
    required this.error,
    required this.success,
  });

  factory CCActionColor.light() => CCActionColor._(
        primary: CCActionPrimaryColor.light(),
        secondary: CCActionSecondaryColor.light(),
        gray: CCActionGrayColor.light(),
        white: CCActionWhiteColor.light(),
        error: CCActionErrorColor.light(),
        success: CCActionSuccessColor.light(),
      );

  factory CCActionColor.dark() => CCActionColor._(
        primary: CCActionPrimaryColor.dark(),
        secondary: CCActionSecondaryColor.dark(),
        gray: CCActionGrayColor.dark(),
        white: CCActionWhiteColor.dark(),
        error: CCActionErrorColor.dark(),
        success: CCActionSuccessColor.dark(),
      );

  CCActionColor lerp(
    covariant CCActionColor? other,
    double t,
  ) {
    if (other is! CCActionColor) {
      return this;
    }

    return CCActionColor._(
      primary: primary.lerp(other.primary, t),
      secondary: secondary.lerp(other.secondary, t),
      gray: gray.lerp(other.gray, t),
      white: white.lerp(other.white, t),
      error: error.lerp(other.error, t),
      success: success.lerp(other.success, t),
    );
  }
}

@immutable
class CCActionPrimaryColor extends CCBaseActionColor {
  const CCActionPrimaryColor._({
    required super.active,
    required super.hover,
    required super.disabled,
  });

  factory CCActionPrimaryColor.light() => CCActionPrimaryColor._(
        active: CCColorFoundation.actionPrimaryActive,
        hover: CCColorFoundation.actionPrimaryHover,
        disabled: CCColorFoundation.actionPrimaryDisabled,
      );

  factory CCActionPrimaryColor.dark() => CCActionPrimaryColor._(
        active: CCColorFoundation.actionPrimaryActiveDark,
        hover: CCColorFoundation.actionPrimaryHoverDark,
        disabled: CCColorFoundation.actionPrimaryDisabledDark,
      );

  @override
  CCActionPrimaryColor lerp(
    covariant CCActionPrimaryColor? other,
    double t,
  ) {
    if (other is! CCActionPrimaryColor) {
      return this;
    }

    return CCActionPrimaryColor._(
      active: Color.lerp(active, other.active, t) ?? active,
      hover: Color.lerp(hover, other.hover, t) ?? hover,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
    );
  }
}

@immutable
class CCActionSecondaryColor extends CCBaseActionColor {
  const CCActionSecondaryColor._({
    required super.active,
    required super.hover,
    required super.disabled,
  });

  factory CCActionSecondaryColor.light() => CCActionSecondaryColor._(
        active: CCColorFoundation.actionSecondaryActive,
        hover: CCColorFoundation.actionSecondaryHover,
        disabled: CCColorFoundation.actionSecondaryDisabled,
      );

  factory CCActionSecondaryColor.dark() => CCActionSecondaryColor._(
        active: CCColorFoundation.actionSecondaryActiveDark,
        hover: CCColorFoundation.actionSecondaryHoverDark,
        disabled: CCColorFoundation.actionSecondaryDisabledDark,
      );

  @override
  CCActionSecondaryColor lerp(
    covariant CCActionSecondaryColor? other,
    double t,
  ) {
    if (other is! CCActionSecondaryColor) {
      return this;
    }

    return CCActionSecondaryColor._(
      active: Color.lerp(active, other.active, t) ?? active,
      hover: Color.lerp(hover, other.hover, t) ?? hover,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
    );
  }
}

@immutable
class CCActionGrayColor extends CCBaseActionColor {
  const CCActionGrayColor._({
    required super.active,
    required super.hover,
    required super.disabled,
  });

  factory CCActionGrayColor.light() => CCActionGrayColor._(
        active: CCColorFoundation.actionGrayActive,
        hover: CCColorFoundation.actionGrayHover,
        disabled: CCColorFoundation.actionGrayDisabled,
      );

  factory CCActionGrayColor.dark() => CCActionGrayColor._(
        active: CCColorFoundation.actionGrayActiveDark,
        hover: CCColorFoundation.actionGrayHoverDark,
        disabled: CCColorFoundation.actionGrayDisabledDark,
      );

  @override
  CCActionGrayColor lerp(
    covariant CCActionGrayColor? other,
    double t,
  ) {
    if (other is! CCActionGrayColor) {
      return this;
    }

    return CCActionGrayColor._(
      active: Color.lerp(active, other.active, t) ?? active,
      hover: Color.lerp(hover, other.hover, t) ?? hover,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
    );
  }
}

@immutable
class CCActionWhiteColor extends CCBaseActionColor {
  const CCActionWhiteColor._({
    required super.active,
    required super.hover,
    required super.disabled,
  });

  factory CCActionWhiteColor.light() => CCActionWhiteColor._(
        active: CCColorFoundation.actionWhiteActive,
        hover: CCColorFoundation.actionWhiteHover,
        disabled: CCColorFoundation.actionWhiteDisabled,
      );

  factory CCActionWhiteColor.dark() => CCActionWhiteColor._(
        active: CCColorFoundation.actionWhiteActiveDark,
        hover: CCColorFoundation.actionWhiteHoverDark,
        disabled: CCColorFoundation.actionWhiteDisabledDark,
      );

  @override
  CCActionWhiteColor lerp(
    covariant CCActionWhiteColor? other,
    double t,
  ) {
    if (other is! CCActionWhiteColor) {
      return this;
    }

    return CCActionWhiteColor._(
      active: Color.lerp(active, other.active, t) ?? active,
      hover: Color.lerp(hover, other.hover, t) ?? hover,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
    );
  }
}

@immutable
class CCActionErrorColor extends CCBaseActionColor {
  const CCActionErrorColor._({
    required super.active,
    required super.hover,
    required super.disabled,
  });

  factory CCActionErrorColor.light() => CCActionErrorColor._(
        active: CCColorFoundation.actionErrorActive,
        hover: CCColorFoundation.actionErrorHover,
        disabled: CCColorFoundation.actionErrorDisabled,
      );

  factory CCActionErrorColor.dark() => CCActionErrorColor._(
        active: CCColorFoundation.actionErrorActiveDark,
        hover: CCColorFoundation.actionErrorHoverDark,
        disabled: CCColorFoundation.actionErrorDisabledDark,
      );

  @override
  CCActionErrorColor lerp(
    covariant CCActionErrorColor? other,
    double t,
  ) {
    if (other is! CCActionErrorColor) {
      return this;
    }

    return CCActionErrorColor._(
      active: Color.lerp(active, other.active, t) ?? active,
      hover: Color.lerp(hover, other.hover, t) ?? hover,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
    );
  }
}

@immutable
class CCActionSuccessColor extends CCBaseActionColor {
  const CCActionSuccessColor._({
    required super.active,
    required super.hover,
    required super.disabled,
  });

  factory CCActionSuccessColor.light() => CCActionSuccessColor._(
        active: CCColorFoundation.actionSuccessActive,
        hover: CCColorFoundation.actionSuccessHover,
        disabled: CCColorFoundation.actionSuccessDisabled,
      );

  factory CCActionSuccessColor.dark() => CCActionSuccessColor._(
        active: CCColorFoundation.actionSuccessActiveDark,
        hover: CCColorFoundation.actionSuccessHoverDark,
        disabled: CCColorFoundation.actionSuccessDisabledDark,
      );

  @override
  CCActionSuccessColor lerp(
    covariant CCActionSuccessColor? other,
    double t,
  ) {
    if (other is! CCActionSuccessColor) {
      return this;
    }

    return CCActionSuccessColor._(
      active: Color.lerp(active, other.active, t) ?? active,
      hover: Color.lerp(hover, other.hover, t) ?? hover,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
    );
  }
}
