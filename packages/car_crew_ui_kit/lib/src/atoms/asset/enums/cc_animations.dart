import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_base.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_type.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/utils/utils.dart';
import 'package:car_crew_ui_kit/src/core/generated/assets.gen.dart';
import 'package:car_crew_ui_kit/src/utils/asset_x.dart';

enum CCAnimations implements CCAssetBase {
  maintenance,
  wifi;

  @override
  CCAssetData<LottieGenImage> get data => switch (this) {
        maintenance => CCAssetData(
            file: (context) => context.ccAsset.animation.maintenance,
            type: CCAssetType.lottie,
            overrideColor: false,
          ),
        wifi => CCAssetData(
            file: (context) => context.ccAsset.animation.wifi,
            type: CCAssetType.lottie,
            overrideColor: false,
          )
      };
}
