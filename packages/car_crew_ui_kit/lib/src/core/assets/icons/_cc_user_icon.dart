part of 'cc_icon_svg.dart';

@immutable
class CCUserIcon {
    final SvgGenImage identityCard;
    final CCEmojiUserIcon emoji;
    final CCAvatarUserIcon avatar;

    const CCUserIcon._({
        required this.identityCard,
        required this.emoji,
        required this.avatar,
    });

    factory CCUserIcon.asset() => CCUserIcon._(
        identityCard: Assets.svg.icons.users.identityCard,
        emoji: CCEmojiUserIcon.asset(),
        avatar: CCAvatarUserIcon.asset(),   
    );
}

@immutable
class CCEmojiUserIcon {
    final SvgGenImage face;
    final SvgGenImage frown;
    final SvgGenImage happy;
    final SvgGenImage neutral;
    final SvgGenImage sad;
    final SvgGenImage smile;
    final SvgGenImage wink;

    const CCEmojiUserIcon._({
        required this.face,
        required this.frown,
        required this.happy,
        required this.neutral,
        required this.sad,
        required this.smile,
        required this.wink,
    });

    factory CCEmojiUserIcon.asset() => CCEmojiUserIcon._(
        face: Assets.svg.icons.users.faceContent,
        frown: Assets.svg.icons.users.faceFrown,
        happy: Assets.svg.icons.users.faceHappy,
        neutral: Assets.svg.icons.users.faceNeutral,
        sad: Assets.svg.icons.users.faceSad,
        smile: Assets.svg.icons.users.faceSmile,
        wink: Assets.svg.icons.users.faceWink,
    );
    
}

@immutable
class CCAvatarUserIcon {
    final SvgGenImage main;
    final SvgGenImage circle;
    final SvgGenImage check;
    final SvgGenImage edit;
    final SvgGenImage minus;
    final SvgGenImage plus;
    final SvgGenImage users;
    final SvgGenImage x;

    const CCAvatarUserIcon._({
        required this.main,
        required this.circle,
        required this.check,
        required this.edit,
        required this.minus,
        required this.plus, 
        required this.users,
        required this.x,
    }); 

    factory CCAvatarUserIcon.asset() => CCAvatarUserIcon._(
        main: Assets.svg.icons.users.user,
        circle: Assets.svg.icons.users.userCircle,
        check: Assets.svg.icons.users.userCheck,
        edit: Assets.svg.icons.users.userEdit,
        minus: Assets.svg.icons.users.userMinus,
        plus: Assets.svg.icons.users.userPlus,
        users: Assets.svg.icons.users.users,
        x: Assets.svg.icons.users.userX,
    );
}
