import 'package:car_crew_ui_kit/src/core/assets/icons/icons.dart';
import 'package:car_crew_ui_kit/src/core/assets/logo/logo.dart';
import 'package:flutter/material.dart';

@immutable
class CCSvg {
  final CCIconSvg icon;
  final CCLogoSvg logo;

  const CCSvg._({
    required this.icon,
    required this.logo,
  });

  factory CCSvg.light() => CCSvg._(
        icon: CCIconSvg.asset(),
        logo: CCLogoSvg.light(),
      );

  factory CCSvg.dark() => CCSvg._(
        icon: CCIconSvg.asset(),
        logo: CCLogoSvg.dark(),
      );
}
