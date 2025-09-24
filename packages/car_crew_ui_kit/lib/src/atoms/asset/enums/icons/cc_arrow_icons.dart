part of 'cc_icons.dart';

enum CCArrowIcons implements CCIcons {
    alignBottom,
    alignLeft,
    alignRight,
    alignTop,
    chevronDown,
    chevronDownDouble,
    chevronLeft,
    chevronLeftDouble,
    chevronRight,
    chevronRightDouble,
    chevronSelectorHorizontal,
    chevronSelectorVertical,
    chevronUp,
    chevronUpDouble,
    circleDown,
    circleDownLeft,
    circleDownRight,
    circleLeft,
    circleRight,
    circleUp,
    circleUpLeft,
    circleUpRight,
    down,
    downLeft,
    downRight,
    expand,
    left,
    minimize,
    refresh,
    refreshDouble,
    right,
    switchHorizontal,
    switchHorizontalAlt,
    switchVertical,
    switchVerticalAlt,
    trendDown,
    trendUp,
    up,
    upLeft,
    upRight,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this) {
        alignBottom => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.align.bottom,
            type: CCAssetType.svg,
        ),
        alignLeft => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.align.left,
            type: CCAssetType.svg,
        ),
        alignRight => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.align.right,
            type: CCAssetType.svg,
        ),
        alignTop => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.align.top,
            type: CCAssetType.svg,
        ),
        chevronDown => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.down,
            type: CCAssetType.svg,
        ),
        chevronDownDouble => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.downDouble,
            type: CCAssetType.svg,
        ),
        chevronLeft => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.left,
            type: CCAssetType.svg,
        ),
        chevronLeftDouble => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.leftDouble,
            type: CCAssetType.svg,
        ),
        chevronRight => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.right,
            type: CCAssetType.svg,
        ),
        chevronRightDouble => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.rightDouble,
            type: CCAssetType.svg,
        ),  
        chevronSelectorHorizontal => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.selectorHorizontal,
            type: CCAssetType.svg,
        ),
        chevronSelectorVertical => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.selectorVertical,
            type: CCAssetType.svg,
        ),
        chevronUp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.up,
            type: CCAssetType.svg,
        ),
        chevronUpDouble => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.chevron.upDouble,
            type: CCAssetType.svg,
        ),  
        circleDown => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.down,
            type: CCAssetType.svg,
        ),
        circleDownLeft => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.downLeft,
            type: CCAssetType.svg,
        ),  
        circleDownRight => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.downRight,
            type: CCAssetType.svg,
        ),
        circleLeft => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.left,
            type: CCAssetType.svg,
        ),  
        circleRight => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.right,
            type: CCAssetType.svg,
        ),
        circleUp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.up,
            type: CCAssetType.svg,
        ),  
        circleUpLeft => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.upLeft,
            type: CCAssetType.svg,
        ),
        circleUpRight => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.circle.upRight,
            type: CCAssetType.svg,
        ),  
        down => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.down,
            type: CCAssetType.svg,
        ),
        downLeft => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.downLeft,
            type: CCAssetType.svg,
        ),  
        downRight => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.downRight,
            type: CCAssetType.svg,
        ),
        expand => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.expand,
            type: CCAssetType.svg,
        ),  
        left => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.left,
            type: CCAssetType.svg,
        ),
        minimize => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.minimize,
            type: CCAssetType.svg,
        ),  
        refresh => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.refresh.main,
            type: CCAssetType.svg,
        ),
        refreshDouble => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.refresh.refreshDouble,
            type: CCAssetType.svg,
        ),  
        right => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.right,
            type: CCAssetType.svg,
        ),
        switchHorizontal => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.switchArrow.horizontal,
            type: CCAssetType.svg,
        ),
        switchHorizontalAlt => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.switchArrow.horizontalAlt,
            type: CCAssetType.svg,
        ),
        switchVertical => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.switchArrow.vertical,
            type: CCAssetType.svg,
        ),
        switchVerticalAlt => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.switchArrow.verticalAlt,
            type: CCAssetType.svg,
        ),
        trendDown => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.trend.down,
            type: CCAssetType.svg,
        ),
        trendUp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.trend.up,
            type: CCAssetType.svg,
        ),
        up => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.up,
            type: CCAssetType.svg,
        ),
        upLeft => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.upLeft,
            type: CCAssetType.svg,
        ),
        upRight => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.arrow.upRight,
            type: CCAssetType.svg,
        ),  
    };
}
