part of 'cc_icon_svg.dart';

@immutable
class CCEssentialIcon {
    final SvgGenImage check;
    final SvgGenImage drag;
    final SvgGenImage magicWand;
    final SvgGenImage plus;
    final SvgGenImage minus;
    final SvgGenImage verified;
    final SvgGenImage close;
    final SvgGenImage xSmall;
    final CCDotEssentialIcon dot;
    final CCCircleEssentialIcon circle;   

    const CCEssentialIcon._({
        required this.check,
        required this.drag,
        required this.magicWand,
        required this.plus,
        required this.minus,
        required this.verified,
        required this.dot,
        required this.circle,
        required this.close,
        required this.xSmall,
    }); 

    factory CCEssentialIcon.asset() => CCEssentialIcon._(
        check: Assets.svg.icons.essentials.check,
        drag: Assets.svg.icons.essentials.drag,
        magicWand: Assets.svg.icons.essentials.magicWand,
        plus: Assets.svg.icons.essentials.plus,
        minus: Assets.svg.icons.essentials.minus,
        verified: Assets.svg.icons.essentials.checkVerified,
        dot: CCDotEssentialIcon.asset(),
        circle: CCCircleEssentialIcon.asset(),
        close: Assets.svg.icons.essentials.xClose,
        xSmall: Assets.svg.icons.essentials.xSmall,
    );
}

@immutable
class CCDotEssentialIcon {
    final SvgGenImage main;
    final SvgGenImage doubleDot;
    final SvgGenImage horizontal;
    final SvgGenImage vertical;
    final SvgGenImage grid;

    const CCDotEssentialIcon._({
        required this.main,
        required this.doubleDot,
        required this.horizontal,
        required this.vertical,
        required this.grid,
    });

    factory CCDotEssentialIcon.asset() => CCDotEssentialIcon._(
        main: Assets.svg.icons.essentials.dot,
        doubleDot: Assets.svg.icons.essentials.doubleDot,
        horizontal: Assets.svg.icons.essentials.dotsHorizontal,
        vertical: Assets.svg.icons.essentials.dotsVertical,
        grid: Assets.svg.icons.essentials.dotsGrid,
    );  
}

@immutable
class CCCircleEssentialIcon {
    final SvgGenImage check;
    final SvgGenImage help;
    final SvgGenImage info;
    final SvgGenImage minus;
    final SvgGenImage plus;
    final SvgGenImage slash;
    final SvgGenImage x;

    const CCCircleEssentialIcon._({
        required this.check,
        required this.help,
        required this.info,
        required this.minus,
        required this.plus,
        required this.slash,
        required this.x,
    });

    factory CCCircleEssentialIcon.asset() => CCCircleEssentialIcon._(
        check: Assets.svg.icons.essentials.checkCircle,
        help: Assets.svg.icons.essentials.helpCircle,
        info: Assets.svg.icons.essentials.infoCircle,
        minus: Assets.svg.icons.essentials.minusCircle,
        plus: Assets.svg.icons.essentials.plusCircle,
        slash: Assets.svg.icons.essentials.slashCircle,
        x: Assets.svg.icons.essentials.xCircle,
    );
}
