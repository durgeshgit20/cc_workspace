import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_base.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_type.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/utils/utils.dart';
import 'package:car_crew_ui_kit/src/utils/asset_x.dart';

enum CCLogo implements CCAssetBase {
  banuaCoder;

  @override
  CCAssetData<dynamic> get data => switch (this) {
        banuaCoder => CCAssetData(
            file: (context) => context.ccAsset.svg.logo.banuaCoder,
            type: CCAssetType.svg,
            overrideColor: false,
          ),
      };
}
