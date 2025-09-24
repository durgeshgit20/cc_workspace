import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_ui_kit/src/atoms/button/data/data.dart';

enum CCButtonSize {
  xs,
  sm,
  md,
  lg,
  xl;

  ButtonSizeData get data => switch (this) {
        xs => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: CCSize.size8.h,
              horizontal: CCSize.size8.w,
            ),
            borderRadius: CCBorderRadius.xs,
            textStyle: CCTypography.bodyXs().copyWith(
              fontWeight: FontWeight.w500,
            ),
            width: 34.w,
            height: 32.h,
          ),
        sm => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: CCSize.size8.h,
              horizontal: CCSize.size12.w,
            ),
            borderRadius: CCBorderRadius.sm,
            textStyle: CCTypography.bodySm().copyWith(
              fontWeight: FontWeight.w500,
            ),
            width: 40.w,
            height: 36.h,
          ),
        md => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: CCSize.size8.h,
              horizontal: CCSize.size12.w,
            ),
            borderRadius: CCBorderRadius.sm,
            textStyle: CCTypography.body().copyWith(
              fontWeight: FontWeight.w500,
            ),
            width: 48.w,
            height: 40.h,
          ),
        lg => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: CCSize.size12.h,
              horizontal: CCSize.size16.w,
            ),
            borderRadius: CCBorderRadius.md,
            textStyle: CCTypography.body().copyWith(
              fontWeight: FontWeight.w500,
            ),
            width: 64.w,
            height: 48.h,
          ),
        xl => ButtonSizeData(
            padding: EdgeInsets.all(CCSize.size16.r),
            borderRadius: CCBorderRadius.md,
            textStyle: CCTypography.body().copyWith(
              fontWeight: FontWeight.w500,
            ),
            width: 120.sw,
            height: 56.h,
          ),
      };
}
