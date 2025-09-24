part of 'cc_icon_svg.dart';

@immutable
class CCFeedbackIcon {
    final SvgGenImage announcementMegaphone;
    final CCAlertFeedbackIcon alert;
    final CCNotificationBellFeedbackIcon notificationBell;
    final CCThumbFeedbackIcon thumb;

    const CCFeedbackIcon._({
        required this.announcementMegaphone,
        required this.alert,
        required this.notificationBell,
        required this.thumb,
    });

    factory CCFeedbackIcon.asset() => CCFeedbackIcon._( 
        announcementMegaphone: Assets.svg.icons.feedback.announcementMegaphone,
        alert: CCAlertFeedbackIcon.asset(),
        notificationBell: CCNotificationBellFeedbackIcon.asset(),
        thumb: CCThumbFeedbackIcon.asset(),
    );
}   

@immutable
class CCAlertFeedbackIcon {
    final SvgGenImage circle;
    final SvgGenImage octagon;
    final SvgGenImage triangle;

    const CCAlertFeedbackIcon._({
        required this.circle,
        required this.octagon,
        required this.triangle,
    });

    factory CCAlertFeedbackIcon.asset() => CCAlertFeedbackIcon._(
        circle: Assets.svg.icons.feedback.alertCircle,
        octagon: Assets.svg.icons.feedback.alertOctagon,
        triangle: Assets.svg.icons.feedback.alertTriangle,
    );
}

@immutable
class CCNotificationBellFeedbackIcon {
    final SvgGenImage main;
    final SvgGenImage ringing;
    final SvgGenImage off;

    const CCNotificationBellFeedbackIcon._({
        required this.main,
        required this.ringing,
        required this.off,
    });

    factory CCNotificationBellFeedbackIcon.asset() => CCNotificationBellFeedbackIcon._(
        main: Assets.svg.icons.feedback.notificationBell,
        ringing: Assets.svg.icons.feedback.notificationBellRinging, 
        off: Assets.svg.icons.feedback.notificationBellOff,
    );
}

@immutable
class CCThumbFeedbackIcon {
    final SvgGenImage up;
    final SvgGenImage down;

    const CCThumbFeedbackIcon._({
        required this.up,
        required this.down,
    });
    
    factory CCThumbFeedbackIcon.asset() => CCThumbFeedbackIcon._(
        up: Assets.svg.icons.feedback.dislikeThumbsUp,
        down: Assets.svg.icons.feedback.likeThumbsDown,
    );
}
