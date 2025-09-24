import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

class AssetPage extends StatelessWidget {
  const AssetPage._({
    required this.width,
    required this.height,
    this.animation,
    this.logo,
  });

  factory AssetPage.animation({
    required CCAnimations animation,
    required double width,
    required double height,
  }) =>
      AssetPage._(
        animation: animation,
        width: width,
        height: height,
      );

  factory AssetPage.logo({
    required CCLogo logo,
    required double width,
    required double height,
  }) =>
      AssetPage._(
        logo: logo,
        width: width,
        height: height,
      );

  final CCAnimations? animation;
  final CCLogo? logo;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(CCSize.size16.r),
        alignment: Alignment.center,
        child: Builder(
          builder: (context) {
            if (animation != null) {
              return CCAsset.animation(
                animation: animation!,
                width: (480 * width / 10).w,
                height: (480 * height / 10).h,
              );
            } else if (logo != null) {
              return CCAsset.logo(
                logo: logo!,
                width: (480 * width / 10).w,
                height: (480 * height / 10).h,
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
