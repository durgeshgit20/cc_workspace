import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  late final ValueNotifier<CCAnimations> _selectedAnimationNotifier;

  @override
  void initState() {
    super.initState();
    _selectedAnimationNotifier = ValueNotifier(CCAnimations.values.first);
  }

  @override
  void dispose() {
    _selectedAnimationNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.atom.childrens.animations.title),
        actions: const [
          ThemeSwitcherButton(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(CCSize.size16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.atom.childrens.animations.description,
                  style: CCTypography.bodySm(),
                ),
                Gap(CCSize.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedAnimationNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

/// To use animation.
CCAsset.animation(
    animation: $value,
);
          
                        ''',
                    syntax: Syntax.DART,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          SingleChildScrollView(
            padding: EdgeInsets.all(CCSize.size16.r),
            child: ValueListenableBuilder(
              valueListenable: _selectedAnimationNotifier,
              builder: (_, value, __) => StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: CCSize.size16.w,
                mainAxisSpacing: CCSize.size16.h,
                children: List.generate(
                  CCAnimations.values.length,
                  (index) => CCCard(
                    width: 140.w,
                    onTap: () => _selectedAnimationNotifier.value =
                        CCAnimations.values[index],
                    bgColor: value == CCAnimations.values[index]
                        ? context.ccColor.background.subtle.info
                        : context.ccColor.background.card.main,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CCAsset.animation(
                          width: 100.w,
                          height: 100.h,
                          animation: CCAnimations.values[index],
                          fit: BoxFit.contain,
                        ),
                        Gap(CCSize.size8.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: CCSize.size16.w,
                          ),
                          child: Text(
                            CCAnimations.values[index].name,
                            textAlign: TextAlign.center,
                            style: CCTypography.bodyXs(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
