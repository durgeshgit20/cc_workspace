import 'dart:io';

import 'package:car_crew_ui_kit/src/templates/footer_layout/animations/animations.dart';
import 'package:flutter/material.dart';

class CCKeyboardAnimationInjector {
  final TickerProvider _tickerProvider;

  const CCKeyboardAnimationInjector(this._tickerProvider);

  CCKeyboardAnimationController getPlatformController() {
    if (Platform.isAndroid) {
      return AndroidKeyboardAnimationController(vsync: _tickerProvider);
    } else if (Platform.isIOS) {
      return IOSKeyboardAnimationController(vsync: _tickerProvider);
    }

    throw UnimplementedError(
      'There is no keyboard animation implemented for this platform!',
    );
  }
}
