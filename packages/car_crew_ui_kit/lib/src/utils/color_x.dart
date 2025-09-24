import 'package:flutter/material.dart';

extension ColorX on Color {
  /// Converts the color to a hexadecimal string representation.
  String get hexString {
    return '#${toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase()}';
  }
}

extension StringColorX on String {
  /// Creates a Color from a hexadecimal string.
  ///
  /// The [String] should be in the format "#AARRGGBB" or "#RRGGBB".
  /// The "#" symbol at the start is optional.
  Color get colorFromHexString {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension MaterialColorX on MaterialColor {
  /// Returns the name and index of the MaterialColor based on the given color value.
  ///
  /// If the color matches any shade in the MaterialColor, it returns a string
  /// in the format "ColorName/ShadeIndex". If no match is found, it returns null.
  String getNameAndIndex(Color color, String colorName) {
    final hexValue = color.toARGB32(); // Ignore alpha channel for comparison
    final alpha = (color.a * 255.0).round() & 0xff;

    for (final entry in {
      0: this[0],
      25: this[25],
      50: this[50],
      100: this[100],
      200: this[200],
      300: this[300],
      400: this[400],
      500: this[500],
      600: this[600],
      700: this[700],
      800: this[800],
      900: this[900],
    }.entries) {
      if (entry.value != null && (entry.value!.toARGB32()) == hexValue) {
        if (alpha == 255) {
          return '$colorName/${entry.key}';
        } else {
          return '$colorName/${entry.key}\n(${(alpha / 255 * 100).round()}% opacity)';
        }
      }
    }

    return color.hexString;
  }
}
