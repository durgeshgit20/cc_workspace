import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/gen/assets.gen.dart';
import 'package:car_crew_widgetbook/presentation/pages/atoms/atom_page.dart';
import 'package:car_crew_widgetbook/presentation/pages/foundations/foundations.dart';

import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CCAsset.logo(
          logo: CCLogo.banuaCoder,
          fit: BoxFit.cover,
          width: 120.w,
        ),
        actions: const [
          ThemeSwitcherButton(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(
              CCSize.size16.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.general.showcase, 
                  style: CCTypography.headingXl(),
                ),
                Gap(CCSize.size16.h),
                Text(
                  context.l10n.general.description,
                  style: CCTypography.body(),
                ),
                Gap(CCSize.size16.h),
                const CodeSnippetWidget(
                  code: '''
dependencies:
  car_crew_ui_kit:
    path: ../packages/car_crew_ui_kit
            ''',
                  syntax: Syntax.YAML,
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(CCSize.size16),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: CCSize.size16.w,
                mainAxisSpacing: CCSize.size16.h,
                children: [
                  _ComponentCard(
                    label: 'Foundations',
                    animation: Assets.animations.templates,
                    page: const FoundationPage(),
                  ),
                  _ComponentCard(
                    label: context.l10n.atom.title,
                    animation: Assets.animations.atoms,
                    page: const AtomPage(),
                  ),
                  _ComponentCard(
                    label: 'Molecules',
                    animation: Assets.animations.molecules,
                    page: const AtomPage(),
                  ),
                  _ComponentCard(
                    label: 'Organism',
                    animation: Assets.animations.organism,
                    page: const AtomPage(),
                  ),
                  _ComponentCard(
                    label: 'Templates',
                    animation: Assets.animations.tokens,
                    page: const AtomPage(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ComponentCard extends StatelessWidget {
  const _ComponentCard({
    required this.label,
    required this.animation,
    required this.page,
  });

  final String label;
  final Widget page;
  final LottieGenImage animation;

  @override
  Widget build(BuildContext context) => CCCard(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<dynamic>(
            builder: (context) => page,
          ),
        ),
        child: Column(
          children: [
            animation.lottie(),
            Gap(CCSize.size8.h),
            Text(
              label,
              style: CCTypography.headingXs(),
            ),
          ],
        ),
      );
}
