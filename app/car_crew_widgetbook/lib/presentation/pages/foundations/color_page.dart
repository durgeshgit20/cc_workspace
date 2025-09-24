import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.foundation.children.color.title,
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
                  context.l10n.foundation.children.color.description,
                  style: CCTypography.bodySm(),
                ),
                Gap(CCSize.size16.h),
                const CodeSnippetWidget(
                  code: '''

Text(
  'This is example text.',
  style: TextStyle(
    color: context.ccColor.text.neutral.main,
  ),
)
                  ''',
                  syntax: Syntax.DART,
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: getColors(context).length,
              itemBuilder: (context, index) {
                final color = getColors(context)[index];
                return _ColorItem(
                  name: color.token,
                  color: color.color,
                  textColor: color.textColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  const _ColorItem({
    required this.name,
    required this.color,
    this.textColor,
  });

  final String name;
  final Color color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) => Container(
        width: 1.sw,
        height: 48.h,
        color: color,
        child: Center(
          child: Text(
            '$name - ${color.hexString}',
            style: CCTypography.bodySm(
              color: textColor,
            ),
          ),
        ),
      );
}
