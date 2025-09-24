import 'package:flutter/material.dart';

@immutable
class CCColorToken {
  const CCColorToken._();

  /// Neutral palette anchored in Strong Black and Clean White
  static const MaterialColor gray = MaterialColor(
    0xFF757575,
    {
      0: Color(0xFFFFFFFF),
      25: Color(0xFFFCFCFC),
      50: Color(0xFFF5F5F5),
      100: Color(0xFFE0E0E0),
      200: Color(0xFFBDBDBD),
      300: Color(0xFFA0A0A0),
      400: Color(0xFF909090),
      500: Color(0xFF757575),
      600: Color(0xFF5C5C5C),
      700: Color(0xFF424242),
      800: Color(0xFF2B2B2B),
      900: Color(0xFF000000),
    },
  );

  /// Energetic Orange – primary action color
  static const MaterialColor primary = MaterialColor(
    0xFFFF6600,
    <int, Color>{
      50: Color(0xFFFFF3E5),
      100: Color(0xFFFFE0CC),
      200: Color(0xFFFFC499),
      300: Color(0xFFFFA366),
      400: Color(0xFFFF8533),
      500: Color(0xFFFF6600),
      600: Color(0xFFE65C00),
      700: Color(0xFFCC5200),
      800: Color(0xFFB34700),
      900: Color(0xFF7A3200),
    },
  );

  /// Strong Black – secondary emphasis
  static const MaterialColor secondary = MaterialColor(
    0xFF1F1F1F,
    <int, Color>{
      50: Color(0xFFEDEDED),
      100: Color(0xFFD9D9D9),
      200: Color(0xFFB3B3B3),
      300: Color(0xFF8C8C8C),
      400: Color(0xFF595959),
      500: Color(0xFF1F1F1F),
      600: Color(0xFF191919),
      700: Color(0xFF141414),
      800: Color(0xFF0A0A0A),
      900: Color(0xFF000000),
    },
  );

  static const MaterialColor success = MaterialColor(
    0xFF4CAF50,
    <int, Color>{
      25: Color(0xFFF4F9F4),
      50: Color(0xFFE8F5E9),
      100: Color(0xFFC8E6C9),
      200: Color(0xFFA5D6A7),
      300: Color(0xFF81C784),
      400: Color(0xFF66BB6A),
      500: Color(0xFF4CAF50),
      600: Color(0xFF43A047),
      700: Color(0xFF388E3C),
      800: Color(0xFF2E7D32),
      900: Color(0xFF1B5E20),
    },
  );

  static const MaterialColor info = MaterialColor(
    0xFF2196F3,
    <int, Color>{
      25: Color(0xFFF1F8FE),
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(0xFF2196F3),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );

  static const MaterialColor error = MaterialColor(
    0xFFF44336,
    <int, Color>{
      25: Color(0xFFFFF5F5),
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFF44336),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  static const MaterialColor warning = MaterialColor(
    0xFFFFC107,
    <int, Color>{
      25: Color(0xFFFFFCF0),
      50: Color(0xFFFFF8E1),
      100: Color(0xFFFFECB3),
      200: Color(0xFFFFE082),
      300: Color(0xFFFFD54F),
      400: Color(0xFFFFCA28),
      500: Color(0xFFFFC107),
      600: Color(0xFFFFB300),
      700: Color(0xFFFFA000),
      800: Color(0xFFFF8F00),
      900: Color(0xFFFF6F00),
    },
  );
}
