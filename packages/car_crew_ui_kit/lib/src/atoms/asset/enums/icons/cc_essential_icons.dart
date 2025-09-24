part of 'cc_icons.dart';

enum CCEssentialIcons implements CCIcons {
    check,
    circleCheck,
    circleHelp,
    circleInfo,
    circleMinus,
    circlePlus,
    circleSlash,
    circleX,
    close,
    dot,
    dotsGrid,
    dotsHorizontal,
    dotsVertical,
    doubleDot,
    drag,
    magicWand,
    minus,
    plus,
    verified,
    xSmall,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this) {
        check => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.check,
            type: CCAssetType.svg,
        ),
        circleCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.circle.check,
            type: CCAssetType.svg,
        ),
        circleHelp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.circle.help,
            type: CCAssetType.svg,
        ),
        circleInfo => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.circle.info,
            type: CCAssetType.svg,
        ),
        circleMinus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.circle.minus,
            type: CCAssetType.svg,
        ),
        circlePlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.circle.plus,
            type: CCAssetType.svg,
        ),
        circleSlash => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.circle.slash,
            type: CCAssetType.svg,
        ),
        circleX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.circle.x,
            type: CCAssetType.svg,
        ),
        close => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.close,
            type: CCAssetType.svg,
        ),
        dot => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.dot.main,
            type: CCAssetType.svg,
        ),
        dotsGrid => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.dot.grid,
            type: CCAssetType.svg,
        ),
        dotsHorizontal => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.dot.horizontal,
            type: CCAssetType.svg,
        ),
        dotsVertical => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.dot.vertical,
            type: CCAssetType.svg,
        ),
        doubleDot => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.dot.doubleDot,
            type: CCAssetType.svg,
        ),
        drag => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.drag,
            type: CCAssetType.svg,
        ),
        magicWand => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.magicWand,
            type: CCAssetType.svg,
        ),
        minus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.minus,
            type: CCAssetType.svg,
        ),
        plus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.plus,
            type: CCAssetType.svg,
        ),
        verified => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.verified,
            type: CCAssetType.svg,
        ),
        xSmall => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.essential.xSmall,
            type: CCAssetType.svg,
        ),
    };
}   
