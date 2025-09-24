import 'package:car_crew_ui_kit/src/utils/color_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'ColorX',
    () {
      test(
        'hexString extension should return correct hex string representation '
        'of the color',
        () {
          // Arrange
          const color = Color(0xFFDEAB18);

          // Act
          final hexString = color.hexString;

          // Assert
          expect(hexString, isA<String>());
          expect(hexString, '#FFDEAB18');
        },
        tags: ['extensions', 'utils'],
      );
    },
  );

  group(
    'StringColorX',
    () {
      test(
        'colorFromHexString extension should correctly convert '
        'hex string to Color object',
        () {
          // Arrange
          const hexString = '#FFDEAB18';

          // Act
          final color = hexString.colorFromHexString;

          // Assert
          expect(color, isA<Color>());
          expect(color.toString(), equals('Color(0xffdeab18)'));
        },
        tags: ['extensions', 'utils'],
      );
    },
  );

  group(
    'MaterialColorX',
    () {
      const materialColors = MaterialColor(
        0xFFE85B98, // Base color (500)
        <int, Color>{
          50: Color(0xFFFDECF3),
          100: Color(0xFFFACFE1),
          200: Color(0xFFF7AFCD),
          300: Color(0xFFF38FB8),
          400: Color(0xFFF077A8),
          500: Color(0xFFE85B98), // Base color
          600: Color(0xFFD55389),
          700: Color(0xFFBC4978),
          800: Color(0xFFA33F68),
          900: Color(0xFF7C2E4C),
        },
      );

      test(
        'getNameAndIndex should return correct color name and shade'
        ' for a given MaterialColor shade',
        () {
          // Arrange

          // Act
          final colorShade = materialColors.getNameAndIndex(
            materialColors.shade100,
            'secondary',
          );

          // Assert
          expect(colorShade, isA<String>());
          expect(colorShade, equals('secondary/100'));
        },
        tags: ['extensions', 'utils'],
      );

      test(
        'getNameAndIndex should return correct color name, shade, and '
        'opacity for a color with opacity',
        () {
          // Arrange

          // Act
          final colorShade = materialColors.getNameAndIndex(
            materialColors.shade700.withValues(alpha: 0.6),
            'secondary',
          );

          // Assert
          expect(colorShade, isA<String>());
          expect(colorShade, equals('secondary/700\n(60% opacity)'));
        },
        tags: ['extensions', 'utils'],
      );

      test(
        'getNameAndIndex should return color hexString when no matching '
        'shade is found in MaterialColor',
        () {
          // Arrange

          // Act
          final colorShade = materialColors.getNameAndIndex(
            const Color(0xffdeab18),
            'secondary',
          );

          // Assert
          expect(colorShade, isA<String>());
          expect(colorShade, equals('#FFDEAB18'));
        },
        tags: ['extensions', 'utils'],
      );
    },
  );
}
