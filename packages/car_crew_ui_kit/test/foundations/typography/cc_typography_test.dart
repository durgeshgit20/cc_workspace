import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../util/cc_component_test_wrapper.dart';
import '../../util/typography_item.dart';


void main() {
  setUpAll(
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await loadAppFonts();
    },
  );


final textListBuilder = Builder(
  builder: (context) {
    final List<TypographyItem> typographyData = [
      TypographyItem(
        label: 'Heading XXXL',
        style: CCTypography.heading3xl(),
        className: 'CCTypography.heading3xl()',
      ),
      TypographyItem(
        label: 'Heading XXL',
        style: CCTypography.heading2xl(),
        className: 'CCTypography.heading2xl()',
      ),
      TypographyItem(
        label: 'Heading XL',
        style: CCTypography.headingXl(),
        className: 'CCTypography.headingXl()',
      ),
      TypographyItem(
        label: 'Heading',
        style: CCTypography.heading(),
        className: 'CCTypography.heading()',
      ),
      TypographyItem(
        label: 'Heading SM',
        style: CCTypography.headingSm(),
        className: 'CCTypography.headingSm()',
      ),
      TypographyItem(
        label: 'Heading XS',
        style: CCTypography.headingXs(),
        className: 'CCTypography.headingXs()',
      ),
      TypographyItem(
        label: 'Body LG',
        style: CCTypography.bodyLg(),
        className: 'CCTypography.bodyLg()',
      ),
      TypographyItem(
        label: 'Body',
        style: CCTypography.body(),
        className: 'CCTypography.body()',
      ),
      TypographyItem(
        label: 'Body SM',
        style: CCTypography.bodySm(),
        className: 'CCTypography.bodySm()',
      ),
      TypographyItem(
        label: 'Body XS',
        style: CCTypography.bodyXs(),
        className: 'CCTypography.bodyXs()',
      ),
      TypographyItem(
        label: 'Bold LG',
        style: CCTypography.boldLg(),
        className: 'CCTypography.boldLg()',
      ),
      TypographyItem(
        label: 'Bold',
        style: CCTypography.bold(),
        className: 'CCTypography.bold()',
      ),
      TypographyItem(
        label: 'Bold SM',
        style: CCTypography.boldSm(),
        className: 'CCTypography.boldSm()',
      ),
      TypographyItem(
        label: 'Bold XS',
        style: CCTypography.boldXs(),
        className: 'CCTypography.boldXs()',
      ),
      TypographyItem(
        label: 'Semibold LG',
        style: CCTypography.semiboldLg(),
        className: 'CCTypography.semiboldLg()',
      ),
      TypographyItem(
        label: 'Semibold',
        style: CCTypography.semibold(),
        className: 'CCTypography.semibold()',
      ),
      TypographyItem(
        label: 'Semibold SM',
        style: CCTypography.semiboldSm(),
        className: 'CCTypography.semiboldSm()',
      ),
      TypographyItem(
        label: 'Semibold XS',
        style: CCTypography.semiboldXs(),
        className: 'CCTypography.semiboldXs()',
      ),
      TypographyItem(
        label: 'Underline LG',
        style: CCTypography.underlineLg(),
        className: 'CCTypography.underlineLg()',
      ),
      TypographyItem(
        label: 'Underline',
        style: CCTypography.underline(),
        className: 'CCTypography.underline()',
      ),
      TypographyItem(
        label: 'Underline SM',
        style: CCTypography.underlineSm(),
        className: 'CCTypography.underlineSm()',
      ),
      TypographyItem(
        label: 'Underline XS',
        style: CCTypography.underlineXs(),
        className: 'CCTypography.underlineXs()',
      ),
    ];
    final fontFamily = CCTypography.heading().fontFamily?.split('_')[0];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(CCSize.size16.r),
            child: Text(
              'Typography',
              style: CCTypography.heading(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(CCSize.size16.r),
            child: Text(
              'Font Family: '
              '$fontFamily',
              style: CCTypography.heading(),
            ),
          ),
          const Divider(),
          Expanded(
            child: DataTable(
              dataRowMaxHeight: 72,
              showBottomBorder: true,
              columns: ['Name', 'Font Size', 'Font Weight', 'class']
                  .map(
                    (e) => DataColumn(
                      label: Expanded(
                        child: Text(e),
                      ),
                    ),
                  )
                  .toList(),
              rows: typographyData
                  .map(
                    (e) => DataRow(
                      cells: [
                        DataCell(
                          Text(
                            e.label,
                            style: e.style,
                          ),
                        ),
                        DataCell(
                          Text(
                            e.style.fontSize.toString(),
                            style: e.style,
                          ),
                        ),
                        DataCell(
                          Text(
                            e.style.fontWeight?.value.toString() ?? 'Normal',
                            style: e.style,
                          ),
                        ),
                        DataCell(
                          Text(
                            e.className,
                            style: e.style,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  },
);


  group(
    'CCTypography',
    () {
      
      testGoldens(
        'TextRender',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            const Scaffold(
              body: Center(
                child: Text('Text Render'),
              ),
            ),
            wrapper: (child) => CCComponentTestWrapper(child: child),
          );

          await screenMatchesGolden(tester, 'cc_typography_text_render');
        },
        tags: ['golden', 'typography'],
      );

      testGoldens(
        'LightTheme',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            textListBuilder,
            surfaceSize: const Size(1400, 1800),
            wrapper: (child) => CCComponentTestWrapper(child: child),
          );

          await screenMatchesGolden(tester, 'cc_typography_light');
        },
        tags: ['golden', 'foundations', 'typography'],
      );

      testGoldens(
        'DarkTheme',
        (WidgetTester tester) async {
          await tester.pumpWidgetBuilder(
            textListBuilder,
            surfaceSize: const Size(1400, 1800),
            wrapper: (child) => CCComponentTestWrapper(
              isDarkMode: true,
              child: child,
            ),
          );

          await screenMatchesGolden(tester, 'cc_typography_dark');
        },
        tags: ['golden', 'foundations', 'typography'],
      );
    },
  );
}
