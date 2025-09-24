part of 'cc_icons.dart';

enum CCTimeIcons implements CCIcons {
  alarm,
  alarmOff,
  alarmPlus,
  calendar,
  calendarCheck,
  calendarHeart,
  calendarMinus,
  calendarPlus,
  clock,
  clockFastForward,
  clockRefresh,
  clockRewind,
  hourglass,
  stopwatch,
  ;

  @override
  CCAssetData<SvgGenImage> get data => switch (this) {
        alarm => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.alarm.main,
            type: CCAssetType.svg,
          ),
        alarmOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.alarm.off,
            type: CCAssetType.svg,
          ),
        alarmPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.alarm.plus,
            type: CCAssetType.svg,
          ),
        calendar => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.calendar.main,
            type: CCAssetType.svg,
          ),
        calendarCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.calendar.check,
            type: CCAssetType.svg,
          ),
        calendarHeart => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.calendar.heart,
            type: CCAssetType.svg,
          ),
        calendarMinus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.calendar.minus,
            type: CCAssetType.svg,
          ),
        calendarPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.calendar.plus,
            type: CCAssetType.svg,
          ),
        clock => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.clock.main,
            type: CCAssetType.svg,
          ),
        clockFastForward => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.clock.fastForward,
            type: CCAssetType.svg,
          ),
        clockRefresh => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.clock.refresh,
            type: CCAssetType.svg,
          ),
        clockRewind => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.clock.rewind,
            type: CCAssetType.svg,
          ),
        hourglass => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.hourglass,
            type: CCAssetType.svg,
          ),
        stopwatch => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.time.stopwatch,
            type: CCAssetType.svg,
          ),
      };
}
