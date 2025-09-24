import 'package:flutter/material.dart';

@immutable
class TypographyItem {
  final TextStyle style;
  final String label;
  final String className;
  const TypographyItem({
    required this.style,
    required this.label,
    required this.className,
  });
}
