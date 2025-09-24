import 'package:car_crew_ui_kit/src/templates/footer_layout/animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/widgets.dart';

class IOSKeyboardAnimationController
    implements CCKeyboardAnimationController {
  final AnimationController _controller;
  final double _springVelocity;
  final SpringDescription _spring;

  IOSKeyboardAnimationController({
    required TickerProvider vsync,
  })  : _controller = AnimationController(
          vsync: vsync,
        ),
        _spring = const SpringDescription(mass: 8, stiffness: 1, damping: 4.5),
        _springVelocity = 10;
  
  @override
  Animation<double> get animation => _controller;

  @override
  void dispose() => _controller.dispose();

  @override
  TickerFuture forward() {
    final forwardSimulation = SpringSimulation(
      _spring,
      0,
      1,
      _springVelocity,
    );
    return _controller.animateWith(forwardSimulation);
  }

  @override
  TickerFuture reverse() {
    final revereseSimulation = SpringSimulation(
      _spring,
      1,
      0,
      -_springVelocity,
    );
    return _controller.animateWith(revereseSimulation);
  }
}
