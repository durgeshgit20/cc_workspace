import 'package:car_crew_ui_kit/src/tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


@immutable
class CCTypography {
  const CCTypography._();

  static TextStyle _base({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) => GoogleFonts.poppins(
        fontSize: (fontSize ?? CCTypographyToken.body.fontSize) * 1.sp,
        color: color,
        fontWeight: fontWeight ?? CCTypographyToken.body.fontWeight,
        decoration: decoration,
        height: height,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      );

  static TextStyle heading3xl({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.heading3xl.fontSize,
    fontWeight: CCTypographyToken.heading3xl.fontWeight,
  );

  static TextStyle heading2xl({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.heading2xl.fontSize,
    fontWeight: CCTypographyToken.heading2xl.fontWeight,
  );

  static TextStyle headingXl({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.headingXl.fontSize,
    fontWeight: CCTypographyToken.headingXl.fontWeight,
  );

  static TextStyle headingLg({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.headingLg.fontSize,
    fontWeight: CCTypographyToken.headingLg.fontWeight,
  );

  static TextStyle heading({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.heading.fontSize,
    fontWeight: CCTypographyToken.heading.fontWeight,
  );

  static TextStyle headingSm({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.headingSm.fontSize,
    fontWeight: CCTypographyToken.headingSm.fontWeight,
  );

  static TextStyle headingXs({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.headingXs.fontSize,
    fontWeight: CCTypographyToken.headingXs.fontWeight,
  );

  static TextStyle bodyLg({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.bodyLg.fontSize,
    fontWeight: CCTypographyToken.bodyLg.fontWeight,
  );

  static TextStyle body({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.body.fontSize,
    fontWeight: CCTypographyToken.body.fontWeight,
  );

  static TextStyle bodySm({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.bodySm.fontSize,
    fontWeight: CCTypographyToken.bodySm.fontWeight,
  );

  static TextStyle bodyXs({
    Color? color,
    TextDecoration? decoration,
    
  }) => _base(
    color: color,
    decoration: decoration,
    fontSize: CCTypographyToken.bodyXs.fontSize,
    fontWeight: CCTypographyToken.bodyXs.fontWeight,
  );

  static TextStyle underlineXs({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.underlineXs.decoration,
    fontSize: CCTypographyToken.underlineXs.fontSize,
    fontWeight: CCTypographyToken.underlineXs.fontWeight,
  );

  static TextStyle underlineSm({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.underlineSm.decoration,
    fontSize: CCTypographyToken.underlineSm.fontSize,
    fontWeight: CCTypographyToken.underlineSm.fontWeight,
  );

  static TextStyle underline({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.underline.decoration,
    fontSize: CCTypographyToken.underline.fontSize,
    fontWeight: CCTypographyToken.underline.fontWeight,
  );

  static TextStyle underlineLg({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.underlineLg.decoration,
    fontSize: CCTypographyToken.underlineLg.fontSize,
    fontWeight: CCTypographyToken.underlineLg.fontWeight,
  );

  static TextStyle semiboldXs({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.semiboldXs.decoration,
    fontSize: CCTypographyToken.semiboldXs.fontSize,
    fontWeight: CCTypographyToken.semiboldXs.fontWeight,
  );

  static TextStyle semiboldSm({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.semiboldSm.decoration,
    fontSize: CCTypographyToken.semiboldSm.fontSize,
    fontWeight: CCTypographyToken.semiboldSm.fontWeight,
  );

  static TextStyle semibold({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.semibold.decoration,
    fontSize: CCTypographyToken.semibold.fontSize,
    fontWeight: CCTypographyToken.semibold.fontWeight,
  );

  static TextStyle semiboldLg({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.semiboldLg.decoration,
    fontSize: CCTypographyToken.semiboldLg.fontSize,
    fontWeight: CCTypographyToken.semiboldLg.fontWeight,
  );

   static TextStyle boldXs({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.boldXs.decoration,
    fontSize: CCTypographyToken.boldXs.fontSize,
    fontWeight: CCTypographyToken.boldXs.fontWeight,
  );

  static TextStyle boldSm({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.boldSm.decoration,
    fontSize: CCTypographyToken.boldSm.fontSize,
    fontWeight: CCTypographyToken.boldSm.fontWeight,
  );

  static TextStyle bold({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.bold.decoration,
    fontSize: CCTypographyToken.bold.fontSize,
    fontWeight: CCTypographyToken.bold.fontWeight,
  );

  static TextStyle boldLg({
    Color? color,
  }) => _base(
    color: color,
    decoration: CCTypographyToken.boldLg.decoration,
    fontSize: CCTypographyToken.boldLg.fontSize,
    fontWeight: CCTypographyToken.boldLg.fontWeight,
  );
}
