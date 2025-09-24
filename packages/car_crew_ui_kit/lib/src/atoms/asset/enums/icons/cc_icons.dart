import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_base.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/enums/cc_asset_type.dart';
import 'package:car_crew_ui_kit/src/atoms/asset/utils/utils.dart';
import 'package:car_crew_ui_kit/src/core/generated/assets.gen.dart';
import 'package:car_crew_ui_kit/src/utils/asset_x.dart';

part 'cc_action_icons.dart';
part 'cc_arrow_icons.dart';
part 'cc_communication_icons.dart';
part 'cc_essential_icons.dart';
part 'cc_feedback_icons.dart';
part 'cc_file_icons.dart';
part 'cc_finance_icons.dart';
part 'cc_maps_icons.dart';
part 'cc_media_icons.dart';
part 'cc_security_icons.dart';
part 'cc_time_icons.dart';
part 'cc_user_icons.dart';

sealed class CCIcons implements CCAssetBase {
  @override
  CCAssetData<SvgGenImage> get data;
}
