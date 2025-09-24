import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class DimensionPage extends StatefulWidget {
  const DimensionPage({super.key});

  @override
  State<DimensionPage> createState() => _DimensionPageState();
}

class _DimensionPageState extends State<DimensionPage> {
  late final ValueNotifier<String> _selectedDimensionNotifier;

  @override
  void initState() {
    super.initState();
    _selectedDimensionNotifier = ValueNotifier('size2');
  }

  @override
  void dispose() {
    _selectedDimensionNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.foundation.children.dimension.title,
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
                  context.l10n.foundation.children.dimension.description,
                  style: CCTypography.bodySm(),
                ),
                Gap(CCSize.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedDimensionNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

Container(
  width: CCSize.$value.w,
  height: CCSize.$value.h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      CCBorderRadius.sm,
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
                valueListenable: _selectedDimensionNotifier,
                builder: (_, value, __) => StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: CCSize.size16.w,
                  crossAxisSpacing: CCSize.size16.h,
                  children: [
                    _DimensionItem(
                      name: 'size2',
                      size: CCSize.size2,
                      isSelected: value == 'size2',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size4',
                      size: CCSize.size4,
                      isSelected: value == 'size4',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size8',
                      size: CCSize.size8,
                      isSelected: value == 'size8',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size12',
                      size: CCSize.size12,
                      isSelected: value == 'size12',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size16',
                      size: CCSize.size16,
                      isSelected: value == 'size16',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size20',
                      size: CCSize.size20,
                      isSelected: value == 'size20',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size24',
                      size: CCSize.size24,
                      isSelected: value == 'size24',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size28',
                      size: CCSize.size28,
                      isSelected: value == 'size28',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size32',
                      size: CCSize.size32,
                      isSelected: value == 'size32',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size36',
                      size: CCSize.size36,
                      isSelected: value == 'size36',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size40',
                      size: CCSize.size40,
                      isSelected: value == 'size40',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size48',
                      size: CCSize.size48,
                      isSelected: value == 'size48',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size52',
                      size: CCSize.size52,
                      isSelected: value == 'size52',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size56',
                      size: CCSize.size56,
                      isSelected: value == 'size56',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size64',
                      size: CCSize.size64,
                      isSelected: value == 'size64',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size72',
                      size: CCSize.size72,
                      isSelected: value == 'size72',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
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

class _DimensionItem extends StatelessWidget {
  const _DimensionItem({
    required this.name,
    required this.size,
    this.isSelected = false,
    this.onSelected,
  });

  final String name;
  final bool isSelected;
  final double size;
  final void Function(String value)? onSelected;

  @override
  Widget build(BuildContext context) => CCCard(
        height: 120.h,
        borderRadius: BorderRadius.circular(CCBorderRadius.sm),
        padding: EdgeInsets.all(CCSize.size8.r),
        bgColor: isSelected
            ? context.ccColor.background.subtle.info
            : context.ccColor.background.card.main,
        onTap: onSelected == null
            ? null
            : () {
                onSelected!.call(name);
              },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.w,
                height: size.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    size < 20 ? 2.r : CCBorderRadius.xs,
                  ),
                  color: context.ccColor.background.neutral.inverse,
                ),
              ),
              Gap(CCSize.size4.h),
              Text(
                name, 
                style: CCTypography.bodySm(),
              ),
            ],
          ),
        ),
      );
}
