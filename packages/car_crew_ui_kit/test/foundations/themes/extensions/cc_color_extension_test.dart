import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_ui_kit/src/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../util/cc_component_test_wrapper.dart';
import '../../../util/color_item.dart';
import '../../../util/color_section.dart';

void main() {
  setUpAll(
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await loadAppFonts();
    },
  );

  group(
    'CCColorExtension',
    () {
      final colorBuilder = Builder(
        builder: (context) => SingleChildScrollView(
          padding: EdgeInsets.all(CCSize.size16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CCColorSection(
                title: 'Material Colors',
                colorItems: [
                  CCColorSection(
                    title: 'Gray',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: '0',
                        color: context.ccColor.material.gray[0]!,
                      ),
                      CCColorItem(
                        label: '25',
                        color: context.ccColor.material.gray[25]!,
                      ),
                      CCColorItem(
                        label: '50',
                        color: context.ccColor.material.gray.shade50,
                      ),
                      CCColorItem(
                        label: '100',
                        color: context.ccColor.material.gray.shade100,
                      ),
                      CCColorItem(
                        label: '200',
                        color: context.ccColor.material.gray.shade200,
                      ),
                      CCColorItem(
                        label: '300',
                        color: context.ccColor.material.gray.shade300,
                      ),
                      CCColorItem(
                        label: '400',
                        color: context.ccColor.material.gray.shade400,
                      ),
                      CCColorItem(
                        label: '500',
                        color: context.ccColor.material.gray.shade500,
                      ),
                      CCColorItem(
                        label: '600',
                        color: context.ccColor.material.gray.shade600,
                      ),
                      CCColorItem(
                        label: '700',
                        color: context.ccColor.material.gray.shade700,
                      ),
                      CCColorItem(
                        label: '800',
                        color: context.ccColor.material.gray.shade800,
                      ),
                      CCColorItem(
                        label: '900',
                        color: context.ccColor.material.gray.shade900,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Primary',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: '50',
                        color: context.ccColor.material.primary.shade50,
                      ),
                      CCColorItem(
                        label: '100',
                        color: context.ccColor.material.primary.shade100,
                      ),
                      CCColorItem(
                        label: '200',
                        color: context.ccColor.material.primary.shade200,
                      ),
                      CCColorItem(
                        label: '300',
                        color: context.ccColor.material.primary.shade300,
                      ),
                      CCColorItem(
                        label: '400',
                        color: context.ccColor.material.primary.shade400,
                      ),
                      CCColorItem(
                        label: '500',
                        color: context.ccColor.material.primary.shade500,
                      ),
                      CCColorItem(
                        label: '600',
                        color: context.ccColor.material.primary.shade600,
                      ),
                      CCColorItem(
                        label: '700',
                        color: context.ccColor.material.primary.shade700,
                      ),
                      CCColorItem(
                        label: '800',
                        color: context.ccColor.material.primary.shade800,
                      ),
                      CCColorItem(
                        label: '900',
                        color: context.ccColor.material.primary.shade900,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Secondary',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: '50',
                        color: context.ccColor.material.secondary.shade50,
                      ),
                      CCColorItem(
                        label: '100',
                        color: context.ccColor.material.secondary.shade100,
                      ),
                      CCColorItem(
                        label: '200',
                        color: context.ccColor.material.secondary.shade200,
                      ),
                      CCColorItem(
                        label: '300',
                        color: context.ccColor.material.secondary.shade300,
                      ),
                      CCColorItem(
                        label: '400',
                        color: context.ccColor.material.secondary.shade400,
                      ),
                      CCColorItem(
                        label: '500',
                        color: context.ccColor.material.secondary.shade500,
                      ),
                      CCColorItem(
                        label: '600',
                        color: context.ccColor.material.secondary.shade600,
                      ),
                      CCColorItem(
                        label: '700',
                        color: context.ccColor.material.secondary.shade700,
                      ),
                      CCColorItem(
                        label: '800',
                        color: context.ccColor.material.secondary.shade800,
                      ),
                      CCColorItem(
                        label: '900',
                        color: context.ccColor.material.secondary.shade900,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Info',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: '25',
                        color: context.ccColor.material.info[25]!,
                      ),
                      CCColorItem(
                        label: '50',
                        color: context.ccColor.material.info.shade50,
                      ),
                      CCColorItem(
                        label: '100',
                        color: context.ccColor.material.info.shade100,
                      ),
                      CCColorItem(
                        label: '200',
                        color: context.ccColor.material.info.shade200,
                      ),
                      CCColorItem(
                        label: '300',
                        color: context.ccColor.material.info.shade300,
                      ),
                      CCColorItem(
                        label: '400',
                        color: context.ccColor.material.info.shade400,
                      ),
                      CCColorItem(
                        label: '500',
                        color: context.ccColor.material.info.shade500,
                      ),
                      CCColorItem(
                        label: '600',
                        color: context.ccColor.material.info.shade600,
                      ),
                      CCColorItem(
                        label: '700',
                        color: context.ccColor.material.info.shade700,
                      ),
                      CCColorItem(
                        label: '800',
                        color: context.ccColor.material.info.shade800,
                      ),
                      CCColorItem(
                        label: '900',
                        color: context.ccColor.material.info.shade900,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Warning',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: '25',
                        color: context.ccColor.material.warning[25]!,
                      ),
                      CCColorItem(
                        label: '50',
                        color: context.ccColor.material.warning.shade50,
                      ),
                      CCColorItem(
                        label: '100',
                        color: context.ccColor.material.warning.shade100,
                      ),
                      CCColorItem(
                        label: '200',
                        color: context.ccColor.material.warning.shade200,
                      ),
                      CCColorItem(
                        label: '300',
                        color: context.ccColor.material.warning.shade300,
                      ),
                      CCColorItem(
                        label: '400',
                        color: context.ccColor.material.warning.shade400,
                      ),
                      CCColorItem(
                        label: '500',
                        color: context.ccColor.material.warning.shade500,
                      ),
                      CCColorItem(
                        label: '600',
                        color: context.ccColor.material.warning.shade600,
                      ),
                      CCColorItem(
                        label: '700',
                        color: context.ccColor.material.warning.shade700,
                      ),
                      CCColorItem(
                        label: '800',
                        color: context.ccColor.material.warning.shade800,
                      ),
                      CCColorItem(
                        label: '900',
                        color: context.ccColor.material.warning.shade900,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Error',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: '25',
                        color: context.ccColor.material.error[25]!,
                      ),
                      CCColorItem(
                        label: '50',
                        color: context.ccColor.material.error.shade50,
                      ),
                      CCColorItem(
                        label: '100',
                        color: context.ccColor.material.error.shade100,
                      ),
                      CCColorItem(
                        label: '200',
                        color: context.ccColor.material.error.shade200,
                      ),
                      CCColorItem(
                        label: '300',
                        color: context.ccColor.material.error.shade300,
                      ),
                      CCColorItem(
                        label: '400',
                        color: context.ccColor.material.error.shade400,
                      ),
                      CCColorItem(
                        label: '500',
                        color: context.ccColor.material.error.shade500,
                      ),
                      CCColorItem(
                        label: '600',
                        color: context.ccColor.material.error.shade600,
                      ),
                      CCColorItem(
                        label: '700',
                        color: context.ccColor.material.error.shade700,
                      ),
                      CCColorItem(
                        label: '800',
                        color: context.ccColor.material.error.shade800,
                      ),
                      CCColorItem(
                        label: '900',
                        color: context.ccColor.material.error.shade900,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Success',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: '25',
                        color: context.ccColor.material.success[25]!,
                      ),
                      CCColorItem(
                        label: '50',
                        color: context.ccColor.material.success.shade50,
                      ),
                      CCColorItem(
                        label: '100',
                        color: context.ccColor.material.success.shade100,
                      ),
                      CCColorItem(
                        label: '200',
                        color: context.ccColor.material.success.shade200,
                      ),
                      CCColorItem(
                        label: '300',
                        color: context.ccColor.material.success.shade300,
                      ),
                      CCColorItem(
                        label: '400',
                        color: context.ccColor.material.success.shade400,
                      ),
                      CCColorItem(
                        label: '500',
                        color: context.ccColor.material.success.shade500,
                      ),
                      CCColorItem(
                        label: '600',
                        color: context.ccColor.material.success.shade600,
                      ),
                      CCColorItem(
                        label: '700',
                        color: context.ccColor.material.success.shade700,
                      ),
                      CCColorItem(
                        label: '800',
                        color: context.ccColor.material.success.shade800,
                      ),
                      CCColorItem(
                        label: '900',
                        color: context.ccColor.material.success.shade900,
                      ),
                    ],
                  ),
                ],
              ),
              CCColorSection(
                title: 'Background Colors',
                colorItems: [
                  CCColorSection(
                    title: 'Neutral',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Main',
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                        color: context.ccColor.background.neutral.main,
                      ),
                      CCColorItem(
                        label: 'Strong',
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                        color: context.ccColor.background.neutral.strong,
                      ),
                      CCColorItem(
                        label: 'Subtle',
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                        color: context.ccColor.background.neutral.subtle,
                      ),
                      CCColorItem(
                        label: 'White',
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                        color: context.ccColor.background.neutral.white,
                      ),
                      CCColorItem(
                        label: 'Inverse',
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                        color: context.ccColor.background.neutral.inverse,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Solid Color',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Primary',
                        color: context.ccColor.background.solid.primary,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.background.solid.secondary,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Info',
                        color: context.ccColor.background.solid.info,
                        baseColor: CCColorToken.info,
                        baseColorName: 'info',
                      ),
                      CCColorItem(
                        label: 'Error',
                        color: context.ccColor.background.solid.error,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Warning',
                        color: context.ccColor.background.solid.warning,
                        baseColor: CCColorToken.warning,
                        baseColorName: 'warning',
                      ),
                      CCColorItem(
                        label: 'Success',
                        color: context.ccColor.background.solid.success,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Subtle Color',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Primary',
                        color: context.ccColor.background.subtle.primary,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.background.subtle.secondary,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Info',
                        color: context.ccColor.background.subtle.info,
                        baseColor: CCColorToken.info,
                        baseColorName: 'info',
                      ),
                      CCColorItem(
                        label: 'Error',
                        color: context.ccColor.background.subtle.error,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Warning',
                        color: context.ccColor.background.subtle.warning,
                        baseColor: CCColorToken.warning,
                        baseColorName: 'warning',
                      ),
                      CCColorItem(
                        label: 'Success',
                        color: context.ccColor.background.subtle.success,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Card',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Main',
                        color: context.ccColor.background.card.main,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.background.card.secondary,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                ],
              ),
              CCColorSection(
                title: 'Action Colors',
                colorItems: [
                  CCColorSection(
                    title: 'Primary',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Active',
                        color: context.ccColor.action.primary.active,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Hover',
                        color: context.ccColor.action.primary.hover,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.action.primary.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Secondary',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Active',
                        color: context.ccColor.action.secondary.active,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Hover',
                        color: context.ccColor.action.secondary.hover,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.action.secondary.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Gray',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Active',
                        color: context.ccColor.action.gray.active,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Hover',
                        color: context.ccColor.action.gray.hover,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.action.gray.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Error',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Active',
                        color: context.ccColor.action.error.active,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Hover',
                        color: context.ccColor.action.error.hover,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.action.error.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Success',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Active',
                        color: context.ccColor.action.success.active,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                      CCColorItem(
                        label: 'Hover',
                        color: context.ccColor.action.success.hover,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.action.success.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'White',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Active',
                        color: context.ccColor.action.white.active,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Hover',
                        color: context.ccColor.action.white.hover,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.action.white.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                ],
              ),
              CCColorSection(
                title: 'Text Colors',
                colorItems: [
                  CCColorSection(
                    title: 'Neutral',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Main',
                        color: context.ccColor.text.neutral.main,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Strong',
                        color: context.ccColor.text.neutral.strong,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Subtle',
                        color: context.ccColor.text.neutral.subtle,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.text.neutral.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Inverse',
                        color: context.ccColor.text.neutral.inverse,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'OnImage',
                        color: context.ccColor.text.neutral.onImage,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Color',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Primary',
                        color: context.ccColor.text.color.primary,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.text.color.secondary,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Info',
                        color: context.ccColor.text.color.info,
                        baseColor: CCColorToken.info,
                        baseColorName: 'info',
                      ),
                      CCColorItem(
                        label: 'Error',
                        color: context.ccColor.text.color.error,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Warning',
                        color: context.ccColor.text.color.warning,
                        baseColor: CCColorToken.warning,
                        baseColorName: 'warning',
                      ),
                      CCColorItem(
                        label: 'Success',
                        color: context.ccColor.text.color.success,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'On Badge',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Primary',
                        color: context.ccColor.text.onBadge.primary,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.text.onBadge.secondary,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Info',
                        color: context.ccColor.text.onBadge.info,
                        baseColor: CCColorToken.info,
                        baseColorName: 'info',
                      ),
                      CCColorItem(
                        label: 'Error',
                        color: context.ccColor.text.onBadge.error,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Warning',
                        color: context.ccColor.text.onBadge.warning,
                        baseColor: CCColorToken.warning,
                        baseColorName: 'warning',
                      ),
                      CCColorItem(
                        label: 'Success',
                        color: context.ccColor.text.onBadge.success,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                    ],
                  ),
                ],
              ),
              CCColorSection(
                title: 'Icon Colors',
                colorItems: [
                  CCColorSection(
                    title: 'Neutral',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Main',
                        color: context.ccColor.icon.neutral.main,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Strong',
                        color: context.ccColor.icon.neutral.strong,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Subtle',
                        color: context.ccColor.icon.neutral.subtle,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Disabled',
                        color: context.ccColor.icon.neutral.disabled,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Inverse',
                        color: context.ccColor.icon.neutral.inverse,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'OnImage',
                        color: context.ccColor.icon.neutral.onImage,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Color',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Primary',
                        color: context.ccColor.icon.color.primary,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.icon.color.secondary,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Info',
                        color: context.ccColor.icon.color.info,
                        baseColor: CCColorToken.info,
                        baseColorName: 'info',
                      ),
                      CCColorItem(
                        label: 'Error',
                        color: context.ccColor.icon.color.error,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Warning',
                        color: context.ccColor.icon.color.warning,
                        baseColor: CCColorToken.warning,
                        baseColorName: 'warning',
                      ),
                      CCColorItem(
                        label: 'Success',
                        color: context.ccColor.icon.color.success,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'On Badge',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Primary',
                        color: context.ccColor.icon.onBadge.primary,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.icon.onBadge.secondary,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Info',
                        color: context.ccColor.icon.onBadge.info,
                        baseColor: CCColorToken.info,
                        baseColorName: 'info',
                      ),
                      CCColorItem(
                        label: 'Error',
                        color: context.ccColor.icon.onBadge.error,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Warning',
                        color: context.ccColor.icon.onBadge.warning,
                        baseColor: CCColorToken.warning,
                        baseColorName: 'warning',
                      ),
                      CCColorItem(
                        label: 'Success',
                        color: context.ccColor.icon.onBadge.success,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                    ],
                  ),
                ],
              ),
              CCColorSection(
                title: 'Outline Colors',
                colorItems: [
                  CCColorSection(
                    title: 'Neutral',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Main',
                        color: context.ccColor.outline.neutral.main,
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                      ),
                      CCColorItem(
                        label: 'Strong',
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                        color: context.ccColor.outline.neutral.strong,
                      ),
                      CCColorItem(
                        label: 'Subtle',
                        baseColor: CCColorToken.gray,
                        baseColorName: 'gray',
                        color: context.ccColor.outline.neutral.subtle,
                      ),
                    ],
                  ),
                  CCColorSection(
                    title: 'Color',
                    titleStyle: CCTypography.headingXs(),
                    colorItems: [
                      CCColorItem(
                        label: 'Primary',
                        color: context.ccColor.outline.color.primary,
                        baseColor: CCColorToken.primary,
                        baseColorName: 'primary',
                      ),
                      CCColorItem(
                        label: 'Secondary',
                        color: context.ccColor.outline.color.secondary,
                        baseColor: CCColorToken.secondary,
                        baseColorName: 'secondary',
                      ),
                      CCColorItem(
                        label: 'Info',
                        color: context.ccColor.outline.color.info,
                        baseColor: CCColorToken.info,
                        baseColorName: 'info',
                      ),
                      CCColorItem(
                        label: 'Error',
                        color: context.ccColor.outline.color.error,
                        baseColor: CCColorToken.error,
                        baseColorName: 'error',
                      ),
                      CCColorItem(
                        label: 'Warning',
                        color: context.ccColor.outline.color.warning,
                        baseColor: CCColorToken.warning,
                        baseColorName: 'warning',
                      ),
                      CCColorItem(
                        label: 'Success',
                        color: context.ccColor.outline.color.success,
                        baseColor: CCColorToken.success,
                        baseColorName: 'success',
                      ),
                    ],
                  ),
                ],
              ),
              CCColorSection(
                title: 'Overlay Colors',
                colorItems: [
                  CCColorItem(
                    label: 'Main',
                    color: context.ccColor.overlay,
                    baseColor: CCColorToken.gray,
                    baseColorName: 'gray',
                  ),
                ],
              ),
            ],
          ),
        ),
      );

      testGoldens(
        'Render Text',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            const Scaffold(
              body: Center(
                child: Text('Render Text'),
              ),
            ),
            wrapper: (child) => CCComponentTestWrapper(child: child),
          );

          await screenMatchesGolden(tester, 'cc_color_extension_text_render');
        },
        tags: ['colors', 'golden', 'foundations'],
      );

      testGoldens(
        'LightTheme',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(CCSize.size16.r),
                    child: Text(
                      'CCColorExtension - LightTheme',
                      style: CCTypography.heading(),
                    ),
                  ),
                  Expanded(child: colorBuilder),
                ],
              ),
            ),
            surfaceSize: const Size(1080, 3700),
            wrapper: (child) => CCComponentTestWrapper(child: child),
          );

          await screenMatchesGolden(tester, 'cc_color_extension_light');
        },
        tags: ['colors', 'golden', 'foundations', 'extensions'],
      );

      testGoldens(
        'DarkTheme',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(CCSize.size16.r),
                    child: Text(
                      'CCColorExtension - DarkTheme',
                      style: CCTypography.heading(),
                    ),
                  ),
                  Expanded(child: colorBuilder),
                ],
              ),
            ),
            surfaceSize: const Size(1080, 3700),
            wrapper: (child) => CCComponentTestWrapper(
              isDarkMode: true,
              child: child,
            ),
          );

          await screenMatchesGolden(tester, 'cc_color_extension_dark');
        },
        tags: ['colors', 'golden', 'foundations', 'extensions'],
      );
    },
  );
}
