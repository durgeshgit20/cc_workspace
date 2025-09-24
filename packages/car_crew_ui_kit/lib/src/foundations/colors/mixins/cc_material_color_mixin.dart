import 'package:flutter/material.dart';

mixin CCMaterialColorMixin {
   MaterialColor? lerpMaterialColor(
    MaterialColor a,
    MaterialColor b,
    double t,
  ) =>
      MaterialColor(
        _lerpColorComponent(t, a[500]!.r, b[500]!.r),
        <int, Color>{
          if (a[0] != null && b[0] != null)
            0: Color.fromARGB(
              _lerpColorComponent(t, a[0]!.a, b[0]!.a),
              _lerpColorComponent(t, a[0]!.r, b[0]!.r),
              _lerpColorComponent(t, a[0]!.g, b[0]!.g),
              _lerpColorComponent(t, a[0]!.b, b[0]!.b),
            ),
          if (a[25] != null && b[25] != null)
            0: Color.fromARGB(
              _lerpColorComponent(t, a[25]!.a, b[25]!.a),
              _lerpColorComponent(t, a[25]!.r, b[25]!.r),
              _lerpColorComponent(t, a[25]!.g, b[25]!.g),
              _lerpColorComponent(t, a[25]!.b, b[25]!.b),
            ),
          for (int shade = 100; shade <= 900; shade += 100)
            shade: Color.fromARGB(
              _lerpColorComponent(t, a[shade]!.a, b[shade]!.a),
              _lerpColorComponent(t, a[shade]!.r, b[shade]!.r),
              _lerpColorComponent(t, a[shade]!.g, b[shade]!.g),
              _lerpColorComponent(t, a[shade]!.b, b[shade]!.b),
            ),
        },
      );

   int _lerpColorComponent(double t, double a, double b) {
    return (a + (b - a) * t).round().clamp(0, 255);
  }
}
