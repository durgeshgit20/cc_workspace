import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/presentation/pages/base_element_page.dart';
import 'package:car_crew_widgetbook/presentation/pages/foundations/foundations.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class FoundationPage extends StatelessWidget {
  const FoundationPage({super.key});

  @override
  Widget build(BuildContext context) => BaseElementPage(
        title: '🔸 ${context.l10n.foundation.title}',
        children: [
          Text(
            context.l10n.foundation.description,
            style: CCTypography.bodySm(),
          ),
          SectionButton(
            name: context.l10n.foundation.children.borderRadius.title,
            page: const BorderRadiusPage(),
          ),
          SectionButton(
            name: context.l10n.foundation.children.dimension.title,
            page: const DimensionPage(),
          ),
          SectionButton(
            name: context.l10n.foundation.children.color.title,
            page: const ColorPage(),
          ),
          SectionButton(
            name: context.l10n.foundation.children.shadow.title,
            page: const ShadowPage(),
          ),
        ],
      );
}
