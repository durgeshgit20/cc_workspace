part of 'cc_color_foundation.dart';

@immutable
abstract class CCNeutralColor {
  final Color main;
  final Color subtle;
  final Color strong;



  const CCNeutralColor({
    required this.main,
    required this.subtle,
    required this.strong,
  });

  CCNeutralColor lerp(covariant CCNeutralColor? other, double t);
}

@immutable
class CCNeutralBackgroundColor
    extends CCNeutralColor {
  final Color white;
  final Color inverse;

  const CCNeutralBackgroundColor._({
    required super.main,
    required super.subtle,
    required super.strong,
    required this.white,
    required this.inverse,
  });

  factory CCNeutralBackgroundColor.light() => CCNeutralBackgroundColor._(
        main: CCColorFoundation.bgMain,
        subtle: CCColorFoundation.bgSubtle,
        strong: CCColorFoundation.bgStrong,
        white: CCColorFoundation.bgWhite,
        inverse: CCColorFoundation.bgInverse,
      );

  factory CCNeutralBackgroundColor.dark() => CCNeutralBackgroundColor._(
        main: CCColorFoundation.bgMainDark,
        subtle: CCColorFoundation.bgSubtleDark,
        strong: CCColorFoundation.bgStrongDark,
        white: CCColorFoundation.bgWhiteDark,
        inverse: CCColorFoundation.bgInverseDark,
      );

  @override
  CCNeutralBackgroundColor lerp(
    covariant CCNeutralBackgroundColor? other,
    double t,
  ) {
    if (other is! CCNeutralBackgroundColor) {
      return this;
    }

    return CCNeutralBackgroundColor._(
      white: Color.lerp(white, other.white, t) ?? white,
      main: Color.lerp(main, other.main, t) ?? main,
      subtle: Color.lerp(subtle, other.subtle, t) ?? subtle,
      inverse: Color.lerp(inverse, other.inverse, t) ?? inverse,
      strong: Color.lerp(strong, other.strong, t) ?? strong,
    );
  }
}

@immutable
abstract class CCNeutralForegroundColor
    extends CCNeutralColor {
  final Color disabled;
  final Color inverse;
  final Color onImage;

  const CCNeutralForegroundColor({
    required super.main,
    required super.subtle,
    required super.strong,
    required this.disabled,
    required this.inverse,
    required this.onImage,
  });
}

@immutable
class CCNeutralOutlineColor
    extends CCNeutralColor {
  const CCNeutralOutlineColor._({
    required super.main,
    required super.subtle,
    required super.strong,
  });

  factory CCNeutralOutlineColor.light() => CCNeutralOutlineColor._(
        main: CCColorFoundation.outlineMain,
        subtle: CCColorFoundation.outlineSubtle,
        strong: CCColorFoundation.outlineStrong,
      );

  factory CCNeutralOutlineColor.dark() => CCNeutralOutlineColor._(
        main: CCColorFoundation.outlineMainDark,
        subtle: CCColorFoundation.outlineSubtleDark,
        strong: CCColorFoundation.outlineStrongDark,
      );

  @override
  CCNeutralOutlineColor lerp(
    covariant CCNeutralOutlineColor? other,
    double t,
  ) =>
      CCNeutralOutlineColor._(
        main: Color.lerp(main, other?.main, t) ?? main,
        subtle: Color.lerp(subtle, other?.subtle, t) ?? subtle,
        strong: Color.lerp(strong, other?.strong, t) ?? strong,
      );
}
