part of 'cc_icons.dart';

enum CCCommunicationIcons implements CCIcons {
    annotation,
    annotationAlert,
    annotationCheck,
    annotationDots,
    annotationHeart,
    annotationInfo,
    annotationPlus,
    annotationQuestion,
    annotationX,
    chatCircle,
    chatCircleAlert,
    chatCircleCheck,
    chatCircleDots,
    chatCircleNotification,
    chatCirclePlus,
    chatCircleQuestion,
    chatCircleSmile,
    chatCircleText,
    chatCircles,
    headphones,
    mailClosed,
    mailOpen,
    phone,
    phoneCall,
    phoneHangUp,
    send,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this) {
        annotation => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.main,
            type: CCAssetType.svg,
        ),
        annotationAlert => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.alert,
            type: CCAssetType.svg,
        ),
        annotationCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.check,
            type: CCAssetType.svg,
        ),
        annotationDots => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.dots,
            type: CCAssetType.svg,
        ),
        annotationHeart => CCAssetData<SvgGenImage>(
                file: (context) => context.ccAsset.svg.icon.communication.annotation.heart,
            type: CCAssetType.svg,
        ),
        annotationInfo => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.info,
            type: CCAssetType.svg,
        ),
        annotationPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.plus,
            type: CCAssetType.svg,
        ),
        annotationQuestion => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.question,
            type: CCAssetType.svg,
        ),
        annotationX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.annotation.x,
            type: CCAssetType.svg, 
        ),
        chatCircle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.main,
            type: CCAssetType.svg,
        ),
        chatCircleAlert => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.alert,
            type: CCAssetType.svg,
        ),
        chatCircleCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.check,
            type: CCAssetType.svg,
        ),
        chatCircleDots => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.dots,
            type: CCAssetType.svg,
        ),
        chatCircleNotification => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.notification,
            type: CCAssetType.svg,
        ),
        chatCirclePlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.plus,
            type: CCAssetType.svg,
        ),
        chatCircleQuestion => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.question,
            type: CCAssetType.svg,
        ),
        chatCircleSmile => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.smile,
            type: CCAssetType.svg,
        ),
        chatCircleText => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.text,
            type: CCAssetType.svg,
        ),
        chatCircles => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.chatCircle.chat,
            type: CCAssetType.svg,
        ),
        headphones => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.headphones,
            type: CCAssetType.svg,
        ),
        mailClosed => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.mail.closed,
            type: CCAssetType.svg,
        ),
        mailOpen => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.mail.open,
            type: CCAssetType.svg,
        ),
        phone => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.phone.main,
            type: CCAssetType.svg,
        ),
        phoneCall => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.phone.call,
            type: CCAssetType.svg,
        ),
        phoneHangUp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.phone.hangUp,
            type: CCAssetType.svg,
        ),
        send => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.communication.send,
            type: CCAssetType.svg,
        ),
    };                      
}
