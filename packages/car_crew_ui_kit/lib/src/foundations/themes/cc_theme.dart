import 'package:car_crew_ui_kit/src/foundations/foundations.dart';
import 'package:car_crew_ui_kit/src/foundations/themes/themes.dart';
import 'package:car_crew_ui_kit/src/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class CCTheme {
  final ThemeData themeData;

  const CCTheme._(this.themeData);

  factory CCTheme.light(ThemeData themeData) {
    final data = themeData.copyWith(
      scaffoldBackgroundColor: CCColorFoundation.bgMain,
      colorScheme: themeData.colorScheme.copyWith(
        surface: CCColorFoundation.bgCardMain,
        error: CCColorFoundation.actionErrorActive,
        onSurface: CCColorFoundation.textMain,
        outline: CCColorFoundation.outlineMain,
        primary: CCColorFoundation.bgPrimary,
        secondary: CCColorFoundation.bgSecondary,
        onError: Colors.white,
        onPrimary: Colors.white,
      ),
      bottomSheetTheme: themeData.bottomSheetTheme.copyWith(
        backgroundColor: CCColorFoundation.bgCardMain,
        dragHandleColor: CCColorFoundation.outlineMain,
        modalBackgroundColor: CCColorFoundation.bgCardMain,
        modalBarrierColor: CCColorFoundation.overlay,
        elevation: 10,
        modalElevation: 10,
        shadowColor: CCShadow.footer.first.color,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(CCBorderRadius.xl),
          ),
          side: BorderSide(
            color: CCColorFoundation.outlineMain,
          ),
        ),
      ),
      appBarTheme: themeData.appBarTheme.copyWith(
        backgroundColor: CCColorFoundation.bgMain,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        scrolledUnderElevation: 0,
        titleTextStyle: CCTypography.headingSm(
          color: CCColorFoundation.textMain,
        ),
      ),
      dividerTheme: themeData.dividerTheme.copyWith(
        space: 0,
        color: CCColorFoundation.outlineStrong,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: CCColorFoundation.bgCardMain,
      ),
      bottomAppBarTheme: themeData.bottomAppBarTheme.copyWith(
        color: CCColorFoundation.bgCardMain,
        elevation: 10,
        padding: EdgeInsets.all(CCSize.size16.r),
        shadowColor: CCShadow.footer.first.color,
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: themeData.bottomNavigationBarTheme.copyWith(
        backgroundColor: CCColorFoundation.bgCardMain,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: CCColorFoundation.actionPrimaryActive,
        selectedLabelStyle: CCTypography.bodySm(
          color: CCColorFoundation.actionPrimaryActive,
        ).copyWith(fontWeight: FontWeight.w500),
        unselectedItemColor: CCColorFoundation.textSubtle,
        unselectedLabelStyle: CCTypography.bodySm(
          color: CCColorFoundation.textSubtle,
        ),
      ),
      cardColor: CCColorFoundation.bgCardMain,
      dialogTheme: themeData.dialogTheme.copyWith(
        backgroundColor: CCColorFoundation.bgCardMain,
        barrierColor: CCColorFoundation.overlay,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CCBorderRadius.md),
        ),
        elevation: 10,
        shadowColor: CCShadow.modal.first.color,
        actionsPadding: EdgeInsets.all(CCSize.size16.r),
        insetPadding: EdgeInsets.all(CCSize.size16.r),
        titleTextStyle: CCTypography.headingXs(
          color: CCColorFoundation.textMain,
        ),
        contentTextStyle: CCTypography.bodySm(
          color: CCColorFoundation.textSubtle,
        ),
      ),
      cardTheme: themeData.cardTheme.copyWith(
        color: CCColorFoundation.bgCardMain,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CCBorderRadius.md),
          side: BorderSide(
            color: CCColorFoundation.outlineMain,
          ),
        ),
        shadowColor: CCShadow.card.first.color,
      ),
      canvasColor: CCColorFoundation.bgWhite,
    );

    final finalData = _buildThemeData(
      themeData: data,
      extensions: [
        CCAssetExtension.light(),
        CCColorExtension.light(),
        CCShadowExtension.light(),
      ],
      brightness: Brightness.light,
    );

    return CCTheme._(finalData);
  }

  factory CCTheme.dark(ThemeData themeData) {
    final data = themeData.copyWith(
      scaffoldBackgroundColor: CCColorFoundation.bgMainDark,
      colorScheme: themeData.colorScheme.copyWith(
        surface: CCColorFoundation.bgCardMainDark,
        error: CCColorFoundation.actionErrorActive,
        onSurface: CCColorFoundation.textMainDark,
        outline: CCColorFoundation.outlineMainDark,
        primary: CCColorFoundation.bgPrimaryDark,
        secondary: CCColorFoundation.bgSecondaryDark,
        onError: Colors.white,
        onPrimary: Colors.white,
      ),
      bottomSheetTheme: themeData.bottomSheetTheme.copyWith(
        backgroundColor: CCColorFoundation.bgCardMainDark,
        dragHandleColor: CCColorFoundation.outlineMainDark,
        modalBackgroundColor: CCColorFoundation.bgCardMainDark,
        modalBarrierColor: CCColorFoundation.overlayDark,
        elevation: 10,
        modalElevation: 10,
        shadowColor: CCShadow.footerDark.first.color,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(CCBorderRadius.xl),
          ),
          side: BorderSide(
            color: CCColorFoundation.outlineMainDark,
          ),
        ),
      ),
      appBarTheme: themeData.appBarTheme.copyWith(
        backgroundColor: CCColorFoundation.bgMainDark,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        scrolledUnderElevation: 0,
        titleTextStyle: CCTypography.headingSm(
          color: CCColorFoundation.textMainDark,
        ),
      ),
      dividerTheme: themeData.dividerTheme.copyWith(
        space: 0,
        color: CCColorFoundation.outlineStrongDark,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: CCColorFoundation.bgCardMainDark,
      ),
      bottomAppBarTheme: themeData.bottomAppBarTheme.copyWith(
        color: CCColorFoundation.bgCardMainDark,
        elevation: 10,
        padding: EdgeInsets.all(CCSize.size16.r),
        shadowColor: CCShadow.footerDark.first.color,
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: themeData.bottomNavigationBarTheme.copyWith(
        backgroundColor: CCColorFoundation.bgCardMainDark,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: CCColorFoundation.actionPrimaryActiveDark,
        selectedLabelStyle: CCTypography.bodySm(
          color: CCColorFoundation.actionPrimaryActiveDark,
        ).copyWith(fontWeight: FontWeight.w500),
        unselectedItemColor: CCColorFoundation.textSubtleDark,
        unselectedLabelStyle: CCTypography.bodySm(
          color: CCColorFoundation.textSubtleDark,
        ),
      ),
      cardColor: CCColorFoundation.bgCardMainDark,
      dialogTheme: themeData.dialogTheme.copyWith(
        backgroundColor: CCColorFoundation.bgCardMainDark,
        barrierColor: CCColorFoundation.overlayDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CCBorderRadius.md),
        ),
        elevation: 10,
        shadowColor: CCShadow.modal.first.color,
        actionsPadding: EdgeInsets.all(CCSize.size16.r),
        insetPadding: EdgeInsets.all(CCSize.size16.r),
        titleTextStyle: CCTypography.headingXs(
          color: CCColorFoundation.textMainDark,
        ),
        contentTextStyle: CCTypography.bodySm(
          color: CCColorFoundation.textSubtleDark,
        ),
      ),
      cardTheme: themeData.cardTheme.copyWith(
        color: CCColorFoundation.bgCardMainDark,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CCBorderRadius.md),
          side: BorderSide(
            color: CCColorFoundation.outlineMainDark,
          ),
        ),
        shadowColor: CCShadow.cardDark.first.color,
      ),
      canvasColor: CCColorFoundation.bgWhiteDark,
    );

    final finalData = _buildThemeData(
      themeData: data,
      extensions: [
        CCAssetExtension.dark(),
        CCColorExtension.dark(),
        CCShadowExtension.dark(),
      ],
      brightness: Brightness.dark,
    );

    return CCTheme._(finalData);
  }

  static ThemeData _buildThemeData({
    required ThemeData themeData,
    required List<ThemeExtension> extensions,
    required Brightness brightness,
  }) =>
      themeData.copyWith(
        brightness: brightness,
        primaryColor: CCColorToken.primary.shade500,
        primaryColorDark: CCColorToken.primary.shade700,
        extensions: extensions,
        buttonTheme: themeData.buttonTheme.copyWith(
          disabledColor: brightness == Brightness.dark
              ? CCColorFoundation.actionPrimaryDisabledDark
              : CCColorFoundation.actionPrimaryDisabled,
          buttonColor: brightness == Brightness.dark
              ? CCColorFoundation.actionPrimaryActiveDark
              : CCColorFoundation.actionPrimaryActive,
          splashColor: (brightness == Brightness.dark
                  ? CCColorFoundation.actionPrimaryActiveDark
                  : CCColorFoundation.actionPrimaryActive)
              .withValues(alpha: .12),
          height: CCSize.size48.h,
          alignedDropdown: true,
          padding: EdgeInsets.zero,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        textSelectionTheme: themeData.textSelectionTheme.copyWith(
          cursorColor: CCColorToken.primary.shade500,
          selectionColor: CCColorToken.primary.shade200.withValues(alpha: 0.4),
          selectionHandleColor: CCColorToken.primary.shade500,
        ),
        primaryTextTheme:
            GoogleFonts.poppinsTextTheme(themeData.textTheme).copyWith(
          displaySmall: CCTypography.heading3xl(
            color: themeData.textTheme.displaySmall?.color,
          ),
          headlineLarge: CCTypography.heading2xl(
            color: themeData.textTheme.headlineLarge?.color,
          ),
          headlineMedium: CCTypography.headingXl(
            color: themeData.textTheme.headlineMedium?.color,
          ),
          headlineSmall: CCTypography.headingLg(
            color: themeData.textTheme.headlineSmall?.color,
          ),
          titleLarge: CCTypography.heading(
            color: themeData.textTheme.titleLarge?.color,
          ),
          titleMedium: CCTypography.headingSm(
            color: themeData.textTheme.titleMedium?.color,
          ),
          titleSmall: CCTypography.headingXs(
            color: themeData.textTheme.titleSmall?.color,
          ),
          labelLarge: CCTypography.body(
            color: themeData.textTheme.labelLarge?.color,
          ).copyWith(fontWeight: FontWeight.w500),
          labelMedium: CCTypography.bodySm(
            color: themeData.textTheme.labelMedium?.color,
          ).copyWith(fontWeight: FontWeight.w500),
          labelSmall: CCTypography.bodyXs(
            color: themeData.textTheme.labelSmall?.color,
          ).copyWith(fontWeight: FontWeight.w500),
          bodyLarge: CCTypography.bodyLg(
            color: themeData.textTheme.bodyLarge?.color,
          ),
          bodyMedium: CCTypography.body(
            color: themeData.textTheme.bodyMedium?.color,
          ),
          bodySmall: CCTypography.bodySm(
            color: themeData.textTheme.bodySmall?.color,
          ),
        ),
      );
}
