part of 'cc_icons.dart';

enum CCFeedbackIcons implements CCIcons {
    alertCircle,
    alertOctagon,
    alertTriangle,
    announcementMegaphone,
    notificationBell,
    notificationBellOff,
    notificationBellRinging,
    thumbsDown,
    thumbsUp,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this) {
        alertCircle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.alert.circle,
            type: CCAssetType.svg,
        ),
        alertOctagon => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.alert.octagon,
            type: CCAssetType.svg,
        ),
        alertTriangle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.alert.triangle,
            type: CCAssetType.svg,
        ),
        announcementMegaphone => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.announcementMegaphone,
            type: CCAssetType.svg,
        ),
        notificationBell => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.notificationBell.main,
            type: CCAssetType.svg,
        ),
        notificationBellOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.notificationBell.off,
            type: CCAssetType.svg,
        ),
        notificationBellRinging => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.notificationBell.ringing,
            type: CCAssetType.svg,
        ),
        thumbsDown => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.thumb.down,
            type: CCAssetType.svg,
        ),
        thumbsUp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.feedback.thumb.up,
            type: CCAssetType.svg,
        ),
    };
}
