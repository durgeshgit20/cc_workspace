import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';

extension TranslationExtension on BuildContext {
  String get thousandSeparator => switch (LocaleSettings.currentLocale) {
        AppLocale.id => '.',
        AppLocale.en => ',',
      };
  String get decimalSeparator => switch (LocaleSettings.currentLocale) {
        AppLocale.id => ',',
        AppLocale.en => '.',
      };
}
