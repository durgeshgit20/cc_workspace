import 'package:car_crew_ui_kit/src/core/generated/assets.gen.dart';
import 'package:flutter/material.dart';

@immutable
class CCLottie {
  final LottieGenImage wifi;
  final LottieGenImage maintenance;

  const CCLottie._({
    required this.wifi,
    required this.maintenance,
  });

  factory CCLottie.light() => CCLottie._(
        wifi: Assets.lottie.wifi,
        maintenance: Assets.lottie.maintenance,
      );

  factory CCLottie.dark() => CCLottie._(
        wifi: Assets.lottie.wifi,
        maintenance: Assets.lottie.maintenance,
      );
}
