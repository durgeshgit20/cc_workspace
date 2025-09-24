import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/presentation/pages/atoms/atoms.dart';
import 'package:car_crew_widgetbook/presentation/pages/base_element_page.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class AtomPage extends StatelessWidget {
  const AtomPage({super.key});

  @override
  Widget build(BuildContext context) => BaseElementPage(
        title: '⚛ ${context.l10n.atom.title}',
        children: [
          Text(
            context.l10n.atom.description,
            style: CCTypography.bodySm(),
          ),
          SectionButton(
            name: context.l10n.atom.childrens.animations.title,
            page: const AnimationPage(),
          ),
          SectionButton(
            name: context.l10n.atom.childrens.button.title,
            page: const ButtonPage(),
          ),
          const SectionButton(
            name: 'Text Fields',
            page: InputPage(),
          ),
          const SectionButton(
            name: 'Checkboxes',
            page: CheckboxPage(),
          ),
          const SectionButton(
            name: 'Card',
            page: CardPage(),
          ),
          SectionButton(
            name: context.l10n.atom.childrens.logo.title,
            page: const LogoPage(),
          ),
        ],
      );
}
