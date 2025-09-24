import 'package:car_crew_ui_kit/src/core/generated/assets.gen.dart';
import 'package:flutter/material.dart';

@immutable
class CCLogoSvg {
  final SvgGenImage banuaCoder;

  const CCLogoSvg._({
    required this.banuaCoder,
  });

  factory CCLogoSvg.light() => CCLogoSvg._(
        banuaCoder: Assets.svg.logo.banuaCoder,
      );

  factory CCLogoSvg.dark() => CCLogoSvg._(
        banuaCoder: Assets.svg.logo.banuaCoderDark,
      );
}
