import 'package:car_crew_ui_kit/src/core/generated/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

export 'cc_transition.dart';
export 'color_x.dart';
export 'component_init.dart';
export 'component_size_utility.dart';
export 'component_x.dart';
export 'context_x.dart';
export 'messenger_util.dart';

Future<void> _preCacheAsset(String path) async {
  final loader = SvgAssetLoader(
    path,
    packageName: Assets.package,
  );
  await svg.cache.putIfAbsent(
    loader.cacheKey(null),
    () => loader.loadBytes(null),
  );
}

Future<void> preCacheLogos() async {
  for (final asset in Assets.svg.logo.values) {
    await _preCacheAsset(asset.path);
  }
}

Future<void> preCacheIcons() async {
  final combinedIcons = [
    ...Assets.svg.icons.actions.values,
    ...Assets.svg.icons.arrows.values,
    ...Assets.svg.icons.communication.values,
    ...Assets.svg.icons.essentials.values,
    ...Assets.svg.icons.feedback.values,
    ...Assets.svg.icons.files.values,
    ...Assets.svg.icons.finance.values,
    ...Assets.svg.icons.maps.values,
    ...Assets.svg.icons.security.values,
    ...Assets.svg.icons.time.values,
    ...Assets.svg.icons.users.values,
  ];

  for (final asset in combinedIcons) {
    await _preCacheAsset(asset.path);
  }
}

void addFontLicense() {
  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString('assets/font/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    },
  );
}
