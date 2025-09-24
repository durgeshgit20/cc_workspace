import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class BorderRadiusPage extends StatefulWidget {
  const BorderRadiusPage({super.key});

  @override
  State<BorderRadiusPage> createState() => _BorderRadiusPageState();
}

class _BorderRadiusPageState extends State<BorderRadiusPage> {
  late final ValueNotifier<String> _selectedShadowNotifier;

  @override
  void initState() {
    super.initState();
    _selectedShadowNotifier = ValueNotifier('xs');
  }

  @override
  void dispose() {
    _selectedShadowNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.foundation.children.borderRadius.title,
        ),
        actions: const [ThemeSwitcherButton()],
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
                  context
                      .l10n.foundation.children.borderRadius.description,
                      style: CCTypography.bodySm(),
                ),
                Gap(CCSize.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedShadowNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      CCBorderRadius.$value,
    ),
  ),
)
                  ''',
                    syntax: Syntax.DART,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(CCSize.size16.r),
              child: ValueListenableBuilder(
                valueListenable: _selectedShadowNotifier,
                builder: (_, value, __) => StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: CCSize.size16.w,
                  crossAxisSpacing: CCSize.size16.h,
                  children: [
                    _BorderRadiusItem(
                      name: 'xs',
                      radius: CCBorderRadius.xs,
                      isSelected: value == 'xs',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _BorderRadiusItem(
                      name: 'sm',
                      radius: CCBorderRadius.sm,
                      isSelected: value == 'sm',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _BorderRadiusItem(
                      name: 'md',
                      radius: CCBorderRadius.md,
                      isSelected: value == 'md',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _BorderRadiusItem(
                      name: 'lg',
                      radius: CCBorderRadius.lg,
                      isSelected: value == 'lg',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BorderRadiusItem extends StatelessWidget {
  const _BorderRadiusItem({
    required this.name,
    required this.radius,
    this.isSelected = false,
    this.onSelected,
  });

  final String name;
  final bool isSelected;
  final double radius;
  final void Function(String value)? onSelected;

  @override
  Widget build(BuildContext context) => CCCard(
        width: 160.w,
        height: 160.h,
        borderRadius: BorderRadius.circular(radius),
        onTap: onSelected == null
            ? null
            : () {
                onSelected!.call(name);
              },
        bgColor: isSelected
            ? context.ccColor.background.subtle.info
            : context.ccColor.background.card.main,
        child: Center(
          child: Text(
            name,
            style: CCTypography.body(),
          ),
        ),
      );
}
