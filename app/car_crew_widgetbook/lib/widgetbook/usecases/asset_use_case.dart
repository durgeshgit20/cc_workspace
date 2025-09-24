import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/widgetbook/pages/atoms/atoms.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Animation',
  type: CCAsset,
)
Widget animationUseCase(BuildContext context) => AssetPage.animation(
      animation: context.knobs.list(
        label: 'Animation',
        options: CCAnimations.values,
      ),
      width: context.knobs.int
          .slider(
            label: 'Width',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
      height: context.knobs.int
          .slider(
            label: 'Height',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
    );

@UseCase(
  name: 'Logo',
  type: CCAsset,
)
Widget logoUseCase(BuildContext context) => AssetPage.logo(
      logo: context.knobs.list(
        label: 'Logo',
        options: CCLogo.values,
      ),
      width: context.knobs.int
          .slider(
            label: 'Width',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
      height: context.knobs.int
          .slider(
            label: 'Height',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
    );
