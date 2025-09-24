import 'package:car_crew_ui_kit/src/foundations/global_foundations.dart';
import 'package:car_crew_ui_kit/src/utils/asset_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util/cc_component_test_wrapper.dart';

void main() {
  late BuildContext context;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  setUpAll(TestWidgetsFlutterBinding.ensureInitialized);

  group(
    'AssetExtension',
    () {
      testWidgets(
        'ccAsset returns CCAssetExtension',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            CCComponentTestWrapper(
              navigatorKey: navigatorKey,
              child: const Scaffold(),
            ),
          );
          context = navigatorKey.currentContext!;
          final bcAsset = context.ccAsset;
          expect(bcAsset, isA<CCAssetExtension>());
        },
        tags: ['extensions', 'utils'],
      );
    },
  );
}
