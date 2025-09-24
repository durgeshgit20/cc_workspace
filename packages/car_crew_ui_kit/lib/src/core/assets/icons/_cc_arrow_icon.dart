part of 'cc_icon_svg.dart';

@immutable
class CCArrowIcon {
    final SvgGenImage up;
    final SvgGenImage upRight;
    final SvgGenImage upLeft;
    final SvgGenImage down;
    final SvgGenImage downRight;
    final SvgGenImage downLeft;
    final SvgGenImage left;
    final SvgGenImage right;
    final SvgGenImage expand;
    final SvgGenImage minimize;
    final CCAlignArrowIcon align;
    final CCCircleArrowIcon circle;
    final CCChevronArrowIcon chevron;
    final CCRefreshArrowIcon refresh;
    final CCSwitchArrowIcon switchArrow;
    final CCTrendArrowIcon trend;   

    const CCArrowIcon._({
        required this.up,
        required this.upRight,
        required this.upLeft,
        required this.down,
        required this.downRight,
        required this.downLeft,
        required this.left,
        required this.right,
        required this.expand,
        required this.minimize,
        required this.align,
        required this.circle,
        required this.chevron,
        required this.refresh,
        required this.switchArrow,
        required this.trend,
    }); 

    factory CCArrowIcon.asset() => CCArrowIcon._(
        up: Assets.svg.icons.arrows.arrowUp,
        upRight: Assets.svg.icons.arrows.arrowUpRight,
        upLeft: Assets.svg.icons.arrows.arrowUpLeft,
        down: Assets.svg.icons.arrows.arrowDown,
        downRight: Assets.svg.icons.arrows.arrowDownRight,
        downLeft: Assets.svg.icons.arrows.arrowDownLeft,
        left: Assets.svg.icons.arrows.arrowLeft,
        right: Assets.svg.icons.arrows.arrowRight,
        expand: Assets.svg.icons.arrows.expand,
        minimize: Assets.svg.icons.arrows.minimize,
        align: CCAlignArrowIcon.asset(),
        circle: CCCircleArrowIcon.asset(),
        chevron: CCChevronArrowIcon.asset(),
        refresh: CCRefreshArrowIcon.asset(),
        switchArrow: CCSwitchArrowIcon.asset(),
        trend: CCTrendArrowIcon.asset(),
    );
}

@immutable
class CCAlignArrowIcon { 
    final SvgGenImage bottom;
    final SvgGenImage left;
    final SvgGenImage right;
    final SvgGenImage top;

    const CCAlignArrowIcon._({
        required this.bottom,
        required this.left,
        required this.right,
        required this.top,
    });

    factory CCAlignArrowIcon.asset() => CCAlignArrowIcon._(
        bottom: Assets.svg.icons.arrows.alignBottom,
        left: Assets.svg.icons.arrows.alignLeft,
        right: Assets.svg.icons.arrows.alignRight,
        top: Assets.svg.icons.arrows.alignTop,
    );
}

@immutable
class CCCircleArrowIcon { 
    final SvgGenImage up;
    final SvgGenImage upRight;
    final SvgGenImage upLeft;
    final SvgGenImage down;
    final SvgGenImage downRight;
    final SvgGenImage downLeft;
    final SvgGenImage left;
    final SvgGenImage right;

    const CCCircleArrowIcon._({
        required this.up,   
        required this.upRight,
        required this.upLeft,
        required this.down,
        required this.downRight,
        required this.downLeft,
        required this.left,
        required this.right,
    });

    factory CCCircleArrowIcon.asset() => CCCircleArrowIcon._(
        up: Assets.svg.icons.arrows.arrowCircleUp,
        upRight: Assets.svg.icons.arrows.arrowCircleUpRight,
        upLeft: Assets.svg.icons.arrows.arrowCircleUpLeft,
        down: Assets.svg.icons.arrows.arrowCircleDown,
        downRight: Assets.svg.icons.arrows.arrowCircleDownRight,
        downLeft: Assets.svg.icons.arrows.arrowCircleDownLeft,
        left: Assets.svg.icons.arrows.arrowCircleLeft,
        right: Assets.svg.icons.arrows.arrowCircleRight,
    );
}
    
@immutable
class CCChevronArrowIcon { 
    final SvgGenImage up;
    final SvgGenImage upDouble;
    final SvgGenImage down;
    final SvgGenImage downDouble;
    final SvgGenImage left;
    final SvgGenImage leftDouble;
    final SvgGenImage right;
    final SvgGenImage rightDouble;
    final SvgGenImage selectorHorizontal;
    final SvgGenImage selectorVertical;

    const CCChevronArrowIcon._({
        required this.up,
        required this.down,
        required this.left,
        required this.right,
        required this.upDouble,
        required this.downDouble,
        required this.leftDouble,
        required this.rightDouble,
        required this.selectorHorizontal,
        required this.selectorVertical,
    });

    factory CCChevronArrowIcon.asset() => CCChevronArrowIcon._(
        up: Assets.svg.icons.arrows.chevronUp,
        upDouble: Assets.svg.icons.arrows.chevronUpDouble,
        down: Assets.svg.icons.arrows.chevronDown,
        downDouble: Assets.svg.icons.arrows.chevronDownDouble,
        left: Assets.svg.icons.arrows.chevronLeft,
        leftDouble: Assets.svg.icons.arrows.chevronLeftDouble,
        right: Assets.svg.icons.arrows.chevronRight,
        rightDouble: Assets.svg.icons.arrows.chevronRightDouble,
        selectorHorizontal: Assets.svg.icons.arrows.chevronSelectorHorizontal,
        selectorVertical: Assets.svg.icons.arrows.chevronSelectorVertical,
    );
}

@immutable
class CCRefreshArrowIcon { 
    final SvgGenImage main;
    final SvgGenImage refreshDouble;

    const CCRefreshArrowIcon._({
        required this.main,
        required this.refreshDouble,
    });

    factory CCRefreshArrowIcon.asset() => CCRefreshArrowIcon._(
        main: Assets.svg.icons.arrows.refresh,
        refreshDouble: Assets.svg.icons.arrows.refreshDouble,
    );
}

@immutable
class CCSwitchArrowIcon { 
    final SvgGenImage horizontal;
    final SvgGenImage horizontalAlt;
    final SvgGenImage vertical;
    final SvgGenImage verticalAlt;

    const CCSwitchArrowIcon._({
        required this.horizontal,
        required this.horizontalAlt,
        required this.vertical,
        required this.verticalAlt,
        });

    factory CCSwitchArrowIcon.asset() => CCSwitchArrowIcon._(
        horizontal: Assets.svg.icons.arrows.switchHorizontal,
        horizontalAlt: Assets.svg.icons.arrows.switchHorizontalAlt,
        vertical: Assets.svg.icons.arrows.switchVertical,
        verticalAlt: Assets.svg.icons.arrows.switchVerticalAlt,
    );
}

@immutable
class CCTrendArrowIcon { 
    final SvgGenImage up;
    final SvgGenImage down;

    const CCTrendArrowIcon._({
        required this.up,
        required this.down,
    });

    factory CCTrendArrowIcon.asset() => CCTrendArrowIcon._(
        up: Assets.svg.icons.arrows.trendUp,
        down: Assets.svg.icons.arrows.trendDown,
    );
}
