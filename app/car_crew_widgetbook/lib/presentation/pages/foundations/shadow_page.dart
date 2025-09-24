import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class ShadowPage extends StatefulWidget {
  const ShadowPage({super.key});

  @override
  State<ShadowPage> createState() => _ShadowPageState();
}

class _ShadowPageState extends State<ShadowPage> {
  late final ValueNotifier<String> _selectedShadowNotifier;

  @override
  void initState() {
    super.initState();
    _selectedShadowNotifier = ValueNotifier('card');
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
          context.l10n.foundation.children.shadow.title,
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
                  context.l10n.foundation.children.shadow.description,
                  style: CCTypography.bodySm(),
                ),
                Gap(CCSize.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedShadowNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

Container(
  decoration: BoxDecoration(
    boxShadow: context.cc.$value,
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
                    _ShadowItem(
                      name: 'card',
                      shadows: context.ccShadow.card,
                      isSelected: value == 'card',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _ShadowItem(
                      name: 'header',
                      shadows: context.ccShadow.header,
                      isSelected: value == 'header',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _ShadowItem(
                      name: 'footer',
                      shadows: context.ccShadow.footer,
                      isSelected: value == 'footer',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _ShadowItem(
                      name: 'modal',
                      shadows: context.ccShadow.modal,
                      isSelected: value == 'modal',
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

class _ShadowItem extends StatelessWidget {
  const _ShadowItem({
    required this.name,
    required this.shadows,
    this.isSelected = false,
    this.onSelected,
  });

  final String name;
  final bool isSelected;
  final List<BoxShadow> shadows;
  final void Function(String value)? onSelected;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 160.w,
        height: 160.h,
        decoration: BoxDecoration(
          color: isSelected
              ? context.ccColor.background.subtle.info
              : context.ccColor.background.card.main,
          borderRadius: BorderRadius.circular(CCBorderRadius.md),
          border: Border.all(
            color: context.ccColor.outline.neutral.main,
          ),
          boxShadow: shadows,
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(CCBorderRadius.md),
          child: InkWell(
            borderRadius: BorderRadius.circular(CCBorderRadius.md),
            onTap: onSelected == null
                ? null
                : () {
                    onSelected!.call(name);
                  },
            child: Center(
              child: Text(
                name,
                style: CCTypography.body(),
              ),
            ),
          ),
        ),
      );
}
