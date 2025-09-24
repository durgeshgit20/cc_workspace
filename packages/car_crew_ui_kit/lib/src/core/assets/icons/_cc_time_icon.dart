part of 'cc_icon_svg.dart';

@immutable
class CCTimeIcon {
  final SvgGenImage hourglass;
  final SvgGenImage stopwatch;
  final CCClockTimeIcon clock;
  final CCAlarmTimeIcon alarm;
  final CCCalendarTimeIcon calendar;

  const CCTimeIcon._({
    required this.hourglass,
    required this.stopwatch,
    required this.clock,
    required this.alarm,
    required this.calendar,
  });

  factory CCTimeIcon.asset() => CCTimeIcon._(
        hourglass: Assets.svg.icons.time.hourglass,
        stopwatch: Assets.svg.icons.time.clockStopwatch,
        clock: CCClockTimeIcon.asset(),
        alarm: CCAlarmTimeIcon.asset(),
        calendar: CCCalendarTimeIcon.asset(),
      );
}

@immutable
class CCAlarmTimeIcon {
  final SvgGenImage main;
  final SvgGenImage off;
  final SvgGenImage plus;

  const CCAlarmTimeIcon._({
    required this.main,
    required this.off,
    required this.plus,
  });

  factory CCAlarmTimeIcon.asset() => CCAlarmTimeIcon._(
        main: Assets.svg.icons.time.alarmClock,
        off: Assets.svg.icons.time.alarmClockOff,
        plus: Assets.svg.icons.time.alarmClockPlus,
      );
}

@immutable
class CCCalendarTimeIcon {
  final SvgGenImage main;
  final SvgGenImage plus;
  final SvgGenImage minus;
  final SvgGenImage check;
  final SvgGenImage heart;

  const CCCalendarTimeIcon._({
    required this.main,
    required this.plus,
    required this.minus,
    required this.check,
    required this.heart,
  });

  factory CCCalendarTimeIcon.asset() => CCCalendarTimeIcon._(
        main: Assets.svg.icons.time.calendar,
        plus: Assets.svg.icons.time.calendarPlus,
        minus: Assets.svg.icons.time.calendarMinus,
        check: Assets.svg.icons.time.calendarCheck,
        heart: Assets.svg.icons.time.calendarHeart,
      );
}

@immutable
class CCClockTimeIcon {
  final SvgGenImage main;
  final SvgGenImage fastForward;
  final SvgGenImage refresh;
  final SvgGenImage rewind;

  const CCClockTimeIcon._({
    required this.main,
    required this.fastForward,
    required this.refresh,
    required this.rewind,
  });

  factory CCClockTimeIcon.asset() => CCClockTimeIcon._(
        main: Assets.svg.icons.time.clock,
        fastForward: Assets.svg.icons.time.clockFastForward,
        refresh: Assets.svg.icons.time.clockRefresh,
        rewind: Assets.svg.icons.time.clockRewind,
      );
}
