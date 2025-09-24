import 'package:flutter/material.dart';

abstract class CCKeyboardAnimationController {
  Animation<double> get animation;

  TickerFuture forward();
  TickerFuture reverse();

  void dispose();
}
