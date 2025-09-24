import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage>
    with SingleTickerProviderStateMixin {
  late final ValueNotifier<CCButtonSize> _buttonSizeNotifier;
  late final ValueNotifier<int> _activeTabNotifier;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(_tabControllerListener);
    _activeTabNotifier = ValueNotifier(0);
    _buttonSizeNotifier = ValueNotifier(CCButtonSize.md);
  }

  @override
  void dispose() {
    _activeTabNotifier.dispose();
    _tabController
      ..removeListener(_tabControllerListener)
      ..dispose();
    _buttonSizeNotifier.dispose();
    super.dispose();
  }

  void _tabControllerListener() {
    _activeTabNotifier.value = _tabController.index;
  }

  List<String> get _codes => [
        '''
    
/// For Primary Button
CCButton.primary(
  size: ${_buttonSizeNotifier.value},
  type: CCButtonType.filled,
);
/// or
CCButton(
   variant: CCButtonVariant.primary,
   size: ${_buttonSizeNotifier.value},
   type: CCButtonType.filled,
);

        ''',
        '''
    
/// For Secondary Button
CCButton.secondary(
  size: ${_buttonSizeNotifier.value},
  type: CCButtonType.outline,
);
/// or
CCButton(
   variant: CCButtonVariant.secondary,
   size: ${_buttonSizeNotifier.value},
   type: CCButtonType.outline,
);

        ''',
        '''
    
/// For Tertiary Button
CCButton.tertiary(
  size: ${_buttonSizeNotifier.value},
  type: CCButtonType.ghost,
);
/// or
CCButton(
   variant: CCButtonVariant.tertiary,
   size: ${_buttonSizeNotifier.value},
   type: CCButtonType.ghost,
);

        ''',
        '''
    
/// For Danger Button
CCButton.danger(
  size: ${_buttonSizeNotifier.value},
  type: CCButtonType.filled,
);
/// or
CCButton(
   variant: CCButtonVariant.danger,
   size: ${_buttonSizeNotifier.value},
   type: CCButtonType.filled,
);

        '''
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
        actions: [
          ValueListenableBuilder(
            valueListenable: _buttonSizeNotifier,
            builder: (_, value, __) => PopupMenuButton<CCButtonSize>(
              initialValue: _buttonSizeNotifier.value,
              surfaceTintColor: context.ccColor.background.card.main,
              onSelected: (value) => _buttonSizeNotifier.value = value,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  CCBorderRadius.md,
                ),
              ),
              child: Chip(
                avatar: Icon(
                  Icons.swap_vert_rounded,
                  color: context.ccColor.icon.neutral.main,
                  size: 20.sp,
                ),
                label: Text(
                  value.name,
                  style: CCTypography.boldSm(
                    color: context.ccColor.text.neutral.strong,
                  ),
                ),
              ),
              itemBuilder: (context) => List.generate(
                CCButtonSize.values.length,
                (index) => PopupMenuItem(
                  value: CCButtonSize.values[index],
                  child: Text(CCButtonSize.values[index].name),
                ),
              ),
            ),
          ),
          const ThemeSwitcherButton(),
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
                  context.l10n.atom.childrens.button.description,
                  style: CCTypography.bodySm(),
                ),
                Gap(CCSize.size16.h),
                ValueListenableBuilder(
                  valueListenable: _buttonSizeNotifier,
                  builder: (_, __, ___) {
                    return ValueListenableBuilder(
                      valueListenable: _activeTabNotifier,
                      builder: (_, value, __) {
                        return CodeSnippetWidget(
                          code: _codes[value],
                          syntax: Syntax.DART,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.sp,
            color: context.ccColor.outline.neutral.subtle,
          ),
          PreferredSize(
            preferredSize: Size(1.sw, 120.h),
            child: TabBar(
              controller: _tabController,
              tabAlignment: TabAlignment.start,
              indicatorColor: context.ccColor.icon.color.primary,
              labelColor: context.ccColor.text.color.primary,
              isScrollable: true,
              tabs: List.generate(
                CCButtonVariant.values.length,
                (index) => Tab(
                  text: CCButtonVariant.values[index].name.toUpperCase(),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: List.generate(
                CCButtonVariant.values.length,
                (index) => ValueListenableBuilder(
                  valueListenable: _buttonSizeNotifier,
                  builder: (_, size, __) {
                    return _ButtonList(
                      size: size,
                      variant: CCButtonVariant.values[index],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonList extends StatelessWidget {
  const _ButtonList({
    required this.variant,
    this.size = CCButtonSize.md,
  });

  final CCButtonVariant variant;
  final CCButtonSize size;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: EdgeInsets.all(CCSize.size16.r),
        child: Column(
          children: [
            CCButton(
              variant: variant,
              size: size,
              label: 'Filled',
              onPressed: () async {},
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Filled (Leading)',
              onPressed: () async {},
              leading: Icon(
                Icons.wallet,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Filled (Trailing)',
              onPressed: () async {},
              trailing: Icon(
                Icons.calendar_month_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Filled (Trailing & Leading)',
              onPressed: () async {},
              trailing: Icon(
                Icons.arrow_upward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
              leading: Icon(
                Icons.arrow_downward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Filled (Disabled)',
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Outline',
              type: CCButtonType.outline,
              onPressed: () async {},
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Outline (Leading)',
              type: CCButtonType.outline,
              onPressed: () async {},
              leading: Icon(
                Icons.wallet,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Outline (Trailing)',
              type: CCButtonType.outline,
              onPressed: () async {},
              trailing: Icon(
                Icons.calendar_month_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Outline (Trailing & Leading)',
              onPressed: () async {},
              type: CCButtonType.outline,
              trailing: Icon(
                Icons.arrow_upward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
              leading: Icon(
                Icons.arrow_downward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Outline (Disabled)',
              type: CCButtonType.outline,
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Ghost',
              type: CCButtonType.ghost,
              onPressed: () async {},
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Ghost (Leading)',
              type: CCButtonType.ghost,
              onPressed: () async {},
              leading: Icon(
                Icons.wallet,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Ghost (Trailing)',
              type: CCButtonType.ghost,
              onPressed: () async {},
              trailing: Icon(
                Icons.calendar_month_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Ghost (Trailing & Leading)',
              onPressed: () async {},
              type: CCButtonType.ghost,
              trailing: Icon(
                Icons.arrow_upward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
              leading: Icon(
                Icons.arrow_downward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              CCSize.size8.h,
            ),
            CCButton(
              variant: variant,
              size: size,
              label: 'Ghost (Disabled)',
              type: CCButtonType.ghost,
            ),
          ],
        ),
      );
}
