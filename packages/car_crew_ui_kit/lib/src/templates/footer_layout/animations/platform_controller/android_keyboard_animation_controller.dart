import 'package:car_crew_ui_kit/src/templates/footer_layout/animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AndroidKeyboardAnimationController
    implements CCKeyboardAnimationController {
  final AnimationController _controller;

  AndroidKeyboardAnimationController({
    required TickerProvider vsync,
  }) : _controller = AnimationController(
          vsync: vsync,
          duration: const Duration(milliseconds: 150),
          reverseDuration: const Duration(milliseconds: 100),
        );

  @override
  Animation<double> get animation => CurvedAnimation(
        parent: _controller,
        curve: const Cubic(0, 0, .2, 1),
        reverseCurve: const Cubic(0, 0, 1, .2),
      );

  @override
  void dispose() => _controller.dispose();

  @override
  TickerFuture forward() => _controller.forward();

  @override
  TickerFuture reverse() => _controller.reverse();
}
