import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:car_crew_widgetbook/car_crew_widgetbook.dart';
import 'package:car_crew_widgetbook/translations/translations.g.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  late final ValueNotifier<CCLogo> _selectedLogoNotifier;

  @override
  void initState() {
    super.initState();
    _selectedLogoNotifier = ValueNotifier(CCLogo.values.first);
  }

  @override
  void dispose() {
    _selectedLogoNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.atom.childrens.logo.title),
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
                  context.l10n.atom.childrens.button.description,
                  style: CCTypography.bodySm(),
                ),
                Gap(CCSize.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedLogoNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

/// To use logo.
CCAsset.logo(
  logo: $value,
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
              valueListenable: _selectedLogoNotifier,
              builder: (_, value, __) => StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: CCSize.size16.w,
                mainAxisSpacing: CCSize.size16.h,
                children: List.generate(
                  CCLogo.values.length,
                  (index) => CCCard(
                    onTap: () =>
                        _selectedLogoNotifier.value = CCLogo.values[index],
                    width: 140.w,
                    bgColor: value == CCLogo.values[index]
                        ? context.ccColor.background.subtle.info
                        : context.ccColor.background.card.main,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CCAsset.logo(
                          width: 100.w,
                          height: 100.h,
                          logo: CCLogo.values[index],
                          fit: BoxFit.contain,
                        ),
                       Text(
                          CCLogo.values[index].name,
                          textAlign: TextAlign.center,
                          style: CCTypography.bodyXs(),
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
