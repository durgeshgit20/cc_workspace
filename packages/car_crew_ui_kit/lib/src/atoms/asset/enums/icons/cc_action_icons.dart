part of 'cc_icons.dart';

enum CCActionIcons implements CCIcons {
    copy,
    download,
    downloadCloud,
    edit,
    eye,
    eyeOff,
    filter,
    flag,
    heart,
    heartCircle,
    heartHand,
    hearts,
    link,
    linkBroken,
    linkExternal,
    login,
    logout,
    menuGrid,
    menuHamburger,
    pin,
    save,
    search,
    settings,
    settingsCog,
    share,
    shareAlt,
    speedometer,
    star,
    starFilled,
    target,
    translate,
    trash,
    upload,
    uploadCloud,
    zoomIn,
    zoomOut,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this) {
        copy => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.copy,
            type: CCAssetType.svg,
        ),
        download => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.download.main,
            type: CCAssetType.svg,
        ),
        downloadCloud => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.download.cloud,
            type: CCAssetType.svg,
        ),
        edit => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.edit,
            type: CCAssetType.svg,
        ),
        eye => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.eye.open,
            type: CCAssetType.svg,
        ),
        eyeOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.eye.off,
            type: CCAssetType.svg,
        ),
        filter => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.filter,
            type: CCAssetType.svg,
        ),
        flag => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.flag,
            type: CCAssetType.svg,
        ),  
        heart => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.heart.main,
            type: CCAssetType.svg,
        ),
        heartCircle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.heart.circle,
            type: CCAssetType.svg,
        ),
        heartHand => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.heart.hand,
            type: CCAssetType.svg,
        ),
        hearts => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.heart.hearts,
            type: CCAssetType.svg,
        ),
        link => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.link.main,
            type: CCAssetType.svg,
        ),
        linkBroken => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.link.broken,
            type: CCAssetType.svg,
        ),
        linkExternal => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.link.externalLink,
            type: CCAssetType.svg,
        ),
        login => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.login,
            type: CCAssetType.svg,
        ),
        logout => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.logout,
            type: CCAssetType.svg,
        ),
        menuGrid => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.menu.grid,
            type: CCAssetType.svg,
        ),
        menuHamburger => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.menu.hamburger,
            type: CCAssetType.svg,
        ),
        pin => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.pin,
            type: CCAssetType.svg,
        ),
        save => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.save,
            type: CCAssetType.svg,
        ),
        search => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.search,
            type: CCAssetType.svg,
        ),
        settings => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.settings.main,
            type: CCAssetType.svg,
        ),
        settingsCog => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.settings.cog,
            type: CCAssetType.svg,
        ),
        share => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.share.main,
            type: CCAssetType.svg,
        ),  
        shareAlt => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.share.cloud,
            type: CCAssetType.svg,
        ),
        speedometer => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.speedometer,
            type: CCAssetType.svg,
        ),
        star => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.star,
            type: CCAssetType.svg,
        ),  
        starFilled => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.starFilled,
            type: CCAssetType.svg,
        ),
        target => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.target,
            type: CCAssetType.svg,
        ),
        translate => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.translate,
            type: CCAssetType.svg,
        ),
        trash => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.trash,
            type: CCAssetType.svg,
        ),  
        upload => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.upload.main,
            type: CCAssetType.svg,
        ),
        uploadCloud => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.upload.cloud,
            type: CCAssetType.svg,
        ),  
        zoomIn => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.zoomIn,
            type: CCAssetType.svg,
        ),
        zoomOut => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.action.zoomOut,
            type: CCAssetType.svg,
        ),
    };
}
