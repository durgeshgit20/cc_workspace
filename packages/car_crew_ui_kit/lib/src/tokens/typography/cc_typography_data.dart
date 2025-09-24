import 'package:flutter/material.dart';

@immutable
class CCTypographyData {
  const CCTypographyData({
    required this.fontSize,
    required this.fontWeight,
    this.decoration,
  });

  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration? decoration;
}
