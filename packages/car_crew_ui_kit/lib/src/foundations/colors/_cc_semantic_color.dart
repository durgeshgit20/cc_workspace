part of 'cc_color_foundation.dart';

@immutable
abstract class CCSemanticColor {
  final Color primary;
  final Color secondary;
  final Color error;
  final Color success;
  final Color info;
  final Color warning;

  const CCSemanticColor({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.info,
    required this.warning,
  });



  CCSemanticColor lerp(
    covariant CCSemanticColor? other,
    double t,
  );
}

@immutable
class CCMaterialColor with CCMaterialColorMixin {
  final MaterialColor primary;
  final MaterialColor secondary;
  final MaterialColor error;
  final MaterialColor success;
  final MaterialColor info;
  final MaterialColor warning;
  final MaterialColor gray;

  const CCMaterialColor._({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.info,
    required this.warning,
    required this.gray,
  });

  factory CCMaterialColor.generate() => const CCMaterialColor._(
        primary: CCColorToken.primary,
        secondary: CCColorToken.secondary,
        error: CCColorToken.error,
        success: CCColorToken.success,
        info: CCColorToken.info,
        warning: CCColorToken.warning,
        gray: CCColorToken.gray,
      );

  CCMaterialColor lerp(
    covariant CCMaterialColor? other,
    double t,
  ) {
    if (other is! CCMaterialColor) {
      return this;
    }

    return CCMaterialColor._(
      primary: primary,
      secondary: secondary,
      error: error,
      success: success,
      info: info,
      warning: warning,
      gray: gray,
    );
  }
}
