import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../util/asset_item.dart';
import '../../util/asset_section.dart';
import '../../util/cc_component_test_wrapper.dart';

void main() {
  setUpAll(
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await loadAppFonts();
    },
  );

  group(
    'CCAsset',
    () {
      final iconBuilder = Builder(
        builder: (context) => SingleChildScrollView(
          padding: EdgeInsets.all(CCSize.size16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetSection(
                title: 'Actions - CCActionIcons',
                assetItems: CCActionIcons.values
                    .map((e) => AssetItem(
                          asset: e,
                          containerSize: 48,
                          iconSize: 24,
                        ),)
                    .toList(),
              ),
              AssetSection(
                title: 'Arrows - CCArrowIcons',
                assetItems: CCArrowIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Communications - CCCommunicationIcons',
                assetItems: CCCommunicationIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Essentials - CCEssentialIcons',
                assetItems: CCEssentialIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Feedback - CCFeedbackIcons',
                assetItems: CCFeedbackIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Files - CCFileIcons',
                assetItems: CCFileIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Finance - CCFinanceIcons',
                assetItems: CCFinanceIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Maps - CCMapsIcons',
                assetItems: CCMapsIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Media - CCMediaIcons',
                assetItems: CCMediaIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Security - CCSecurityIcons',
                assetItems: CCSecurityIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'Time - CCTimeIcons',
                assetItems: CCTimeIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
              AssetSection(
                title: 'User - CCUserIcons',
                assetItems: CCUserIcons.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 48,
                        iconSize: 24,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );

      final logoBuilder = Builder(
        builder: (context) => SingleChildScrollView(
          padding: EdgeInsets.all(CCSize.size16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetSection(
                title: 'Logo - CCLogo',
                assetItems: CCLogo.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 120,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );

      final animationBuilder = Builder(
        builder: (context) => SingleChildScrollView(
          padding: EdgeInsets.all(CCSize.size16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetSection(
                title: 'Animations - CCAnimations',
                assetItems: CCAnimations.values
                    .map(
                      (e) => AssetItem(
                        asset: e,
                        containerSize: 120,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );

      testGoldens(
        'Render Text',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            const Scaffold(
              body: Center(
                child: Text('Render Text'),
              ),
            ),
            wrapper: (child) => CCComponentTestWrapper(child: child),
          );

          await screenMatchesGolden(
              tester, 'cc_color_extension_text_render',);
        },
        tags: ['assets', 'golden', 'atoms'],
      );

      group(
        'CCIcons',
        () {
          testGoldens(
            'LightTheme',
            (WidgetTester tester) async {
              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CCSize.size16.r),
                        child: Text(
                          'CCAsset.icon - LightTheme',
                          style: CCTypography.heading(),
                        ),
                      ),
                      Expanded(child: iconBuilder),
                    ],
                  ),
                ),
                surfaceSize: const Size(1080, 3150),
                wrapper: (child) => CCComponentTestWrapper(child: child),
              );

              await screenMatchesGolden(
                tester,
                'cc_asset_icon_light',
              );
            },
            tags: ['assets', 'golden', 'atoms'],
          );

          testGoldens(
            'DarkTheme',
            (WidgetTester tester) async {
              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CCSize.size16.r),
                        child: Text(
                          'CCAsset.icon - DarkTheme',
                          style: CCTypography.heading(),
                        ),
                      ),
                      Expanded(child: iconBuilder),
                    ],
                  ),
                ),
                surfaceSize: const Size(1080, 3150),
                wrapper: (child) => CCComponentTestWrapper(
                  isDarkMode: true,
                  child: child,
                ),
              );

              await screenMatchesGolden(
                tester,
                'cc_asset_icon_dark',
              );
            },
            tags: ['assets', 'golden', 'atoms'],
          );
        },
      );

      group(
        'CCLogo',
        () {
          testGoldens(
            'LightTheme',
            (WidgetTester tester) async {
              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CCSize.size16.r),
                        child: Text(
                          'CCAsset.logo - LightTheme',
                          style: CCTypography.heading(),
                        ),
                      ),
                      Expanded(child: logoBuilder),
                    ],
                  ),
                ),
                surfaceSize: const Size(1080, 3150),
                wrapper: (child) => CCComponentTestWrapper(child: child),
              );

              await screenMatchesGolden(
                tester,
                'cc_asset_logo_light',
              );
            },
            tags: ['assets', 'golden', 'atoms'],
          );

          testGoldens(
            'DarkTheme',
            (WidgetTester tester) async {
              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CCSize.size16.r),
                        child: Text(
                          'CCAsset.logo - DarkTheme',
                          style: CCTypography.heading(),
                        ),
                      ),
                      Expanded(child: logoBuilder),
                    ],
                  ),
                ),
                surfaceSize: const Size(1080, 3150),
                wrapper: (child) => CCComponentTestWrapper(
                  isDarkMode: true,
                  child: child,
                ),
              );

              await screenMatchesGolden(
                tester,
                'cc_asset_logo_dark',
              );
            },
            tags: ['assets', 'golden', 'atoms'],
          );
        },
      );

      group(
        'CCAnimations',
        () {
          testGoldens(
            'LightTheme',
            (WidgetTester tester) async {
              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CCSize.size16.r),
                        child: Text(
                          'CCAsset.animation - LightTheme',
                          style: CCTypography.heading(),
                        ),
                      ),
                      Expanded(child: animationBuilder),
                    ],
                  ),
                ),
                surfaceSize: const Size(1080, 3150),
                wrapper: (child) => CCComponentTestWrapper(child: child),
              );
              await tester.pumpAndSettle();

              await screenMatchesGolden(
                tester,
                'cc_asset_animation_light',
              );
            },
            tags: ['assets', 'golden', 'atoms'],
          );

          testGoldens(
            'DarkTheme',
            (WidgetTester tester) async {
              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CCSize.size16.r),
                        child: Text(
                          'CCAsset.animation - DarkTheme',
                          style: CCTypography.heading(),
                        ),
                      ),
                      Expanded(child: animationBuilder),
                    ],
                  ),
                ),
                surfaceSize: const Size(1080, 3150),
                wrapper: (child) => CCComponentTestWrapper(
                  isDarkMode: true,
                  child: child,
                ),
              );
              await tester.pumpAndSettle();
              await screenMatchesGolden(
                tester,
                'cc_asset_animation_dark',
              );
            },
            tags: ['assets', 'golden', 'atoms'],
          );
        },
      );
    },
  );
}
