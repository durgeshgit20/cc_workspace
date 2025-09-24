// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_test/flutter_test.dart';
import 'package:l10n/l10n.dart';

void main() {
  group(
    'l10n',
    () async {
      final translationEn = await AppLocale.en.build();
      final translationId = await AppLocale.id.build();
      test('All locales should be supported by Flutter', () {
        for (final locale in AppLocale.values) {
          // This will fail if the locale is not supported by Flutter
          expect(kMaterialSupportedLanguages, contains(locale.languageCode));
        }
      });
      group(
        'en',
        () {
          test(
            'should compile english translations',
            () => expect(
              translationEn.general.appName,
              'car_crew',
            ),
          );
        },
      );

      group(
        'id',
        () {
          test(
            'should compile indonesian translations',
            () => expect(
              translationId.general.appName,
              'car_crew',
            ),
          );
        },
      );
    },
  );
}
