import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCComponentInit extends StatelessWidget {
  const CCComponentInit({
    required this.builder,
    super.key,
    this.designSize,
  });

  final Widget Function(BuildContext context) builder;
  final Size? designSize;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQueryData.fromView(View.of(context));
    return MediaQuery(
      data: mediaQueryData.copyWith(
        textScaler: mediaQueryData.textScaler.clamp(
          minScaleFactor: 1,
          maxScaleFactor: 1.2,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth != 0) {
            ScreenUtil.init(
              context,
              designSize: Size(
                designSize?.width ?? constraints.maxWidth,
                designSize?.height ?? constraints.maxHeight,
              ),
            );

            return builder(context);
          }

          return nil;
        },
      ),
    );
  }
}
