import 'package:flutter/material.dart';

@immutable
class KeyboardAnimationProperty {
  final double bottomInset;
  final double animationStart;
  const KeyboardAnimationProperty({
    this.bottomInset = 0,
    this.animationStart = 0,
  });

  KeyboardAnimationProperty copyWith({
    double? bottomInset,
    double? animationStart,
  }) =>
      KeyboardAnimationProperty(
        bottomInset: bottomInset ?? this.bottomInset,
        animationStart: animationStart ?? this.animationStart,
      );
}
