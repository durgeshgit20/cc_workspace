import 'package:car_crew_ui_kit/src/foundations/colors/mixins/cc_material_color_mixin.dart';
import 'package:car_crew_ui_kit/src/tokens/tokens.dart';
import 'package:flutter/material.dart';

part '_cc_action_color.dart';
part '_cc_background_color.dart';
part '_cc_icon_color.dart';
part '_cc_neutral_color.dart';
part '_cc_outline_color.dart';
part '_cc_semantic_color.dart';
part '_cc_text_color.dart';

@immutable
class CCColorFoundation {
  const CCColorFoundation._();

  static final bgMain = CCColorToken.gray[0]!;
  static const bgMainDark = Color(0xFF121212);
  static final bgSubtle = CCColorToken.gray.shade50;
  static final bgSubtleDark = CCColorToken.gray.shade800;
  static final bgStrong = CCColorToken.gray.shade50;
  static final bgStrongDark = CCColorToken.gray.shade900;
  static final bgWhite = CCColorToken.gray[0]!;
  static final bgWhiteDark = CCColorToken.gray.shade900;
  static final bgInverse = CCColorToken.gray.shade900;
  static final bgInverseDark = CCColorToken.gray[0]!;

  static final bgPrimary = CCColorToken.primary.shade500;
  static final bgPrimaryDark = CCColorToken.primary.shade600;
  static final bgSecondary = CCColorToken.secondary.shade500;
  static final bgSecondaryDark = CCColorToken.secondary.shade600;
  static final bgSuccess = CCColorToken.success.shade500;
  static final bgSuccessDark = CCColorToken.success.shade600;
  static final bgInfo = CCColorToken.info.shade500;
  static final bgInfoDark = CCColorToken.info.shade600;
  static final bgError = CCColorToken.error.shade500;
  static final bgErrorDark = CCColorToken.error.shade600;
  static final bgWarning = CCColorToken.warning.shade500;
  static final bgWarningDark = CCColorToken.warning.shade600;

  static final bgSubtlePrimary = CCColorToken.primary.shade50;
  static final bgSubtlePrimaryDark = CCColorToken.primary.shade900;
  static final bgSubtleSecondary = CCColorToken.secondary.shade50;
  static final bgSubtleSecondaryDark = CCColorToken.secondary.shade900;
  static final bgSubtleSuccess = CCColorToken.success.shade50;
  static final bgSubtleSuccessDark = CCColorToken.success.shade900;
  static final bgSubtleInfo = CCColorToken.info[25]!;
  static final bgSubtleInfoDark = CCColorToken.info.shade900;
  static final bgSubtleError = CCColorToken.error.shade100;
  static final bgSubtleErrorDark = CCColorToken.error.shade900;
  static final bgSubtleWarning = CCColorToken.warning.shade50;
  static final bgSubtleWarningDark = CCColorToken.warning.shade900;

  static final bgCardMain = CCColorToken.gray[0]!;
  static final bgCardMainDark = CCColorToken.gray.shade800;
  static final bgCardSecondary = CCColorToken.gray.shade50;
  static final bgCardSecondaryDark = CCColorToken.gray.shade800;

  static final textMain = CCColorToken.gray.shade900;
  static final textMainDark = CCColorToken.gray.shade100;
  static final textSubtle = CCColorToken.gray.shade500;
  static final textSubtleDark = CCColorToken.gray.shade400;
  static final textStrong = CCColorToken.gray.shade900;
  static final textStrongDark = CCColorToken.gray[0]!;
  static final textOnImage = Colors.white.withValues(alpha: .75);
  static final textOnImageDark = Colors.white.withValues(alpha: .75);
  static const textInverse = Colors.white;
  static const textInverseDark = Colors.black;
  static final textDisable = CCColorToken.gray.shade300;
  static final textDisableDark = CCColorToken.gray.shade500;

  static final textPrimary = CCColorToken.primary.shade500;
  static final textPrimaryDark = CCColorToken.primary.shade400;
  static final textSecondary = CCColorToken.secondary.shade500;
  static final textSecondaryDark = CCColorToken.secondary.shade400;
  static final textSuccess = CCColorToken.success.shade500;
  static final textSuccessDark = CCColorToken.success.shade400;
  static final textInfo = CCColorToken.info.shade500;
  static final textInfoDark = CCColorToken.info.shade400;
  static final textError = CCColorToken.error.shade500;
  static final textErrorDark = CCColorToken.error.shade400;
  static final textWarning = CCColorToken.warning.shade500;
  static final textWarningDark = CCColorToken.warning.shade400;

  static final textBadgePrimary = CCColorToken.primary.shade500;
  static final textBadgePrimaryDark = CCColorToken.primary.shade200;
  static final textBadgeSecondary = CCColorToken.secondary.shade500;
  static final textBadgeSecondaryDark = CCColorToken.secondary.shade200;
  static final textBadgeSuccess = CCColorToken.success.shade500;
  static final textBadgeSuccessDark = CCColorToken.success.shade300;
  static final textBadgeInfo = CCColorToken.info.shade500;
  static final textBadgeInfoDark = CCColorToken.info.shade200;
  static final textBadgeError = CCColorToken.error.shade500;
  static final textBadgeErrorDark = CCColorToken.error.shade300;
  static final textBadgeWarning = CCColorToken.warning.shade500;
  static final textBadgeWarningDark = CCColorToken.warning.shade300;

  static final iconMain = CCColorToken.gray.shade900;
  static final iconMainDark = CCColorToken.gray.shade100;
  static final iconSubtle = CCColorToken.gray.shade500;
  static final iconSubtleDark = CCColorToken.gray.shade400;
  static final iconStrong = CCColorToken.gray.shade900;
  static final iconStrongDark = CCColorToken.gray[0]!;
  static final iconOnImage = Colors.white.withValues(alpha: .75);
  static final iconOnImageDark = Colors.white.withValues(alpha: .75);
  static const iconInverse = Colors.white;
  static const iconInverseDark = Colors.black;
  static final iconDisable = CCColorToken.gray.shade300;
  static final iconDisableDark = CCColorToken.gray.shade500;

  static final iconPrimary = CCColorToken.primary.shade500;
  static final iconPrimaryDark = CCColorToken.primary.shade400;
  static final iconSecondary = CCColorToken.secondary.shade500;
  static final iconSecondaryDark = CCColorToken.secondary.shade400;
  static final iconSuccess = CCColorToken.success.shade500;
  static final iconSuccessDark = CCColorToken.success.shade400;
  static final iconInfo = CCColorToken.info.shade500;
  static final iconInfoDark = CCColorToken.info.shade400;
  static final iconError = CCColorToken.error.shade500;
  static final iconErrorDark = CCColorToken.error.shade400;
  static final iconWarning = CCColorToken.warning.shade500;
  static final iconWarningDark = CCColorToken.warning.shade400;

  static final iconBadgePrimary = CCColorToken.primary.shade500;
  static final iconBadgePrimaryDark = CCColorToken.primary.shade200;
  static final iconBadgeSecondary = CCColorToken.secondary.shade500;
  static final iconBadgeSecondaryDark = CCColorToken.secondary.shade200;
  static final iconBadgeSuccess = CCColorToken.success.shade500;
  static final iconBadgeSuccessDark = CCColorToken.success.shade300;
  static final iconBadgeInfo = CCColorToken.info.shade500;
  static final iconBadgeInfoDark = CCColorToken.info.shade200;
  static final iconBadgeError = CCColorToken.error.shade500;
  static final iconBadgeErrorDark = CCColorToken.error.shade300;
  static final iconBadgeWarning = CCColorToken.warning.shade500;
  static final iconBadgeWarningDark = CCColorToken.warning.shade300;

  static final outlineMain = CCColorToken.gray.shade100;
  static final outlineMainDark = CCColorToken.gray.shade800;
  static final outlineSubtle = CCColorToken.gray.shade50;
  static final outlineSubtleDark = CCColorToken.gray.shade900;
  static final outlineStrong = CCColorToken.gray.shade200;
  static final outlineStrongDark = CCColorToken.gray.shade700;

  static final outlinePrimary = CCColorToken.primary.shade500.withValues(
    alpha: .25,
  );
  static final outlinePrimaryDark = CCColorToken.primary.shade300.withValues(
    alpha: .25,
  );
  static final outlineSecondary = CCColorToken.secondary.shade500.withValues(
    alpha: .25,
  );
  static final outlineSecondaryDark =
      CCColorToken.secondary.shade300.withValues(
    alpha: .25,
  );
  static final outlineSuccess = CCColorToken.success.shade500.withValues(
    alpha: .25,
  );
  static final outlineSuccessDark = CCColorToken.success.shade300.withValues(
    alpha: .25,
  );
  static final outlineInfo = CCColorToken.info.shade500.withValues(
    alpha: .25,
  );
  static final outlineInfoDark = CCColorToken.info.shade300.withValues(
    alpha: .25,
  );
  static final outlineError = CCColorToken.error.shade500.withValues(
    alpha: .25,
  );
  static final outlineErrorDark = CCColorToken.error.shade300.withValues(
    alpha: .25,
  );
  static final outlineWarning = CCColorToken.warning.shade500.withValues(
    alpha: .25,
  );
  static final outlineWarningDark = CCColorToken.warning.shade300.withValues(
    alpha: .25,
  );

  static final actionPrimaryActive = CCColorToken.primary.shade500;
  static final actionPrimaryActiveDark = CCColorToken.primary.shade400;
  static final actionPrimaryHover = CCColorToken.primary.shade600;
  static final actionPrimaryHoverDark = CCColorToken.primary.shade500;
  static final actionPrimaryDisabled = CCColorToken.gray.shade100;
  static final actionPrimaryDisabledDark = CCColorToken.gray.shade700;
  static final actionSecondaryActive = CCColorToken.primary.shade500;
  static final actionSecondaryActiveDark = CCColorToken.primary.shade400;
  static final actionSecondaryHover = CCColorToken.primary.shade600;
  static final actionSecondaryHoverDark = CCColorToken.primary.shade500;
  static final actionSecondaryDisabled = CCColorToken.gray.shade100;
  static final actionSecondaryDisabledDark = CCColorToken.gray.shade700;
  static final actionGrayActive = CCColorToken.gray.shade900;
  static final actionGrayActiveDark = CCColorToken.gray.shade400;
  static final actionGrayHover = CCColorToken.gray.shade700;
  static final actionGrayHoverDark = CCColorToken.gray.shade300;
  static final actionGrayDisabled = CCColorToken.gray.shade100;
  static final actionGrayDisabledDark = CCColorToken.gray.shade700;
  static const actionWhiteActive = Colors.white;
  static const actionWhiteActiveDark = Colors.white;
  static final actionWhiteHover = CCColorToken.gray.shade100;
  static final actionWhiteHoverDark = CCColorToken.gray.shade100;
  static final actionWhiteDisabled = CCColorToken.gray.shade200;
  static final actionWhiteDisabledDark = CCColorToken.gray.shade700;
  static final actionErrorActive = CCColorToken.error.shade500;
  static final actionErrorActiveDark = CCColorToken.error.shade600;
  static final actionErrorHover = CCColorToken.error.shade600;
  static final actionErrorHoverDark = CCColorToken.error.shade700;
  static final actionErrorDisabled = CCColorToken.gray.shade200;
  static final actionErrorDisabledDark = CCColorToken.gray.shade700;
  static final actionSuccessActive = CCColorToken.success.shade500;
  static final actionSuccessActiveDark = CCColorToken.success.shade600;
  static final actionSuccessHover = CCColorToken.success.shade600;
  static final actionSuccessHoverDark = CCColorToken.success.shade700;
  static final actionSuccessDisabled = CCColorToken.gray.shade200;
  static final actionSuccessDisabledDark = CCColorToken.gray.shade700;

  static final overlay = Colors.black.withValues(alpha: .25);
  static final overlayDark = Colors.black.withValues(alpha: .75);
}
