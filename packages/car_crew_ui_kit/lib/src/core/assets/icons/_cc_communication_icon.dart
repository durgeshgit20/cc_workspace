part of 'cc_icon_svg.dart';

@immutable
class CCCommunicationIcon {
    final SvgGenImage headphones;
    final SvgGenImage send;
    final CCAnnotationCommunicationIcon annotation;
    final CCMailCommunicationIcon mail;
    final CCChatCirleCommunicationIcon chatCircle;
    final CCPhoneCommunicationIcon phone;

    const CCCommunicationIcon._({
        required this.headphones,
        required this.send,
        required this.annotation,
        required this.mail,
        required this.chatCircle,
        required this.phone,
    }); 

    factory CCCommunicationIcon.asset() => CCCommunicationIcon._(
        headphones: Assets.svg.icons.communication.headphones,
        send: Assets.svg.icons.communication.send,
        annotation: CCAnnotationCommunicationIcon.asset(),
        mail: CCMailCommunicationIcon.asset(),
        chatCircle: CCChatCirleCommunicationIcon.asset(),
        phone: CCPhoneCommunicationIcon.asset(),
    );
}   
    

@immutable
class CCAnnotationCommunicationIcon {
    final SvgGenImage main;
    final SvgGenImage alert;
    final SvgGenImage check;
    final SvgGenImage dots;
    final SvgGenImage heart;
    final SvgGenImage info;
    final SvgGenImage plus;
    final SvgGenImage question;
    final SvgGenImage x;

    const CCAnnotationCommunicationIcon._({
        required this.main,
        required this.alert,
        required this.check,
        required this.dots,
        required this.heart,
        required this.info,
        required this.plus,
        required this.question,
        required this.x,
    });

    factory CCAnnotationCommunicationIcon.asset() => CCAnnotationCommunicationIcon._(
        main: Assets.svg.icons.communication.annotation,
        alert: Assets.svg.icons.communication.annotationAlert,
        check: Assets.svg.icons.communication.annotationCheck,
        dots: Assets.svg.icons.communication.annotationDots,
        heart: Assets.svg.icons.communication.annotationHeart,
        info: Assets.svg.icons.communication.annotationInfo,
        plus: Assets.svg.icons.communication.annotationPlus,
        question: Assets.svg.icons.communication.annotationQuestion,
        x: Assets.svg.icons.communication.annotationX,
    );
}

@immutable
class CCMailCommunicationIcon {
    final SvgGenImage open;
    final SvgGenImage closed;

    const CCMailCommunicationIcon._({
        required this.open,
        required this.closed,
    });

    factory CCMailCommunicationIcon.asset() => CCMailCommunicationIcon._(
        open: Assets.svg.icons.communication.mailOpen,
        closed: Assets.svg.icons.communication.mailClosed,
    );
}

@immutable
class CCChatCirleCommunicationIcon {
    final SvgGenImage main;
    final SvgGenImage alert;
    final SvgGenImage chat;
    final SvgGenImage check;
    final SvgGenImage dots;
    final SvgGenImage notification;
    final SvgGenImage plus;
    final SvgGenImage question;
    final SvgGenImage smile;
    final SvgGenImage text;

    const CCChatCirleCommunicationIcon._({
        required this.main,
        required this.alert,
        required this.chat,
        required this.check,
        required this.dots,
        required this.notification,
        required this.plus,
        required this.question,
        required this.smile,
        required this.text,
    }); 

    factory CCChatCirleCommunicationIcon.asset() => CCChatCirleCommunicationIcon._(
        main: Assets.svg.icons.communication.messageCircle,
        alert: Assets.svg.icons.communication.messageAlertCircle,
        chat: Assets.svg.icons.communication.messageChatCircle,
        check: Assets.svg.icons.communication.messageCheckCircle,
        dots: Assets.svg.icons.communication.messageDotsCircle,
        notification: Assets.svg.icons.communication.messageNotificationCircle,
        plus: Assets.svg.icons.communication.messagePlusCircle,
        question: Assets.svg.icons.communication.messageQuestionCircle,
        smile: Assets.svg.icons.communication.messageSmileCircle,
        text: Assets.svg.icons.communication.messageTextCircle,
    );      
}

@immutable
class CCPhoneCommunicationIcon {
    final SvgGenImage main;
    final SvgGenImage call;
    final SvgGenImage hangUp;

    const CCPhoneCommunicationIcon._({
        required this.main,
        required this.call,
        required this.hangUp,
    });

    factory CCPhoneCommunicationIcon.asset() => CCPhoneCommunicationIcon._(
        main: Assets.svg.icons.communication.phone,
        call: Assets.svg.icons.communication.phoneCall,
        hangUp: Assets.svg.icons.communication.phoneHangUp,
    );  
}
