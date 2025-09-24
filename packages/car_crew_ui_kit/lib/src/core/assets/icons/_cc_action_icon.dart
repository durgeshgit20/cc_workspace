part of 'cc_icon_svg.dart';

@immutable
class CCActionIcon { 
    final SvgGenImage copy;
    final SvgGenImage save;
    final SvgGenImage edit;
    final SvgGenImage filter;
    final SvgGenImage translate;
    final SvgGenImage trash;
    final SvgGenImage target;
    final SvgGenImage flag;
    final SvgGenImage pin;
    final SvgGenImage speedometer;
    final SvgGenImage search;
    final SvgGenImage zoomIn;
    final SvgGenImage zoomOut;
    final SvgGenImage star;
    final SvgGenImage starFilled;
    final SvgGenImage login;
    final SvgGenImage logout;
    final CCActionMenuIcon menu;
    final CCActionEyeIcon eye;
    final CCActionDownloadIcon download;
    final CCActionUploadIcon upload;
    final CCActionShareIcon share;
    final CCActionSettingsIcon settings;
    final CCActionHeartIcon heart;
    final CCActionLinkIcon link;

    const CCActionIcon._({
        required this.copy,
        required this.save,
        required this.edit,
        required this.filter,
        required this.translate,
        required this.trash,
        required this.target,
        required this.flag,
        required this.pin,
        required this.menu,
        required this.speedometer,
        required this.search,
        required this.zoomIn,
        required this.zoomOut,
        required this.star, 
        required this.starFilled,
        required this.login,
        required this.logout,
        required this.eye,
        required this.download,
        required this.upload,
        required this.share,    
        required this.settings,
        required this.heart,
        required this.link, 
    });

    factory CCActionIcon.asset() => CCActionIcon._(
        copy: Assets.svg.icons.actions.copy,
        save: Assets.svg.icons.actions.save,
        edit: Assets.svg.icons.actions.editPencil,
        filter: Assets.svg.icons.actions.filterFunnel,
        translate: Assets.svg.icons.actions.translate,
        trash: Assets.svg.icons.actions.trash,
        target: Assets.svg.icons.actions.target,
        flag: Assets.svg.icons.actions.flagReport,
        pin: Assets.svg.icons.actions.pin,
        speedometer: Assets.svg.icons.actions.speedometer,
        search: Assets.svg.icons.actions.search,
        zoomIn: Assets.svg.icons.actions.zoomIn,
        zoomOut: Assets.svg.icons.actions.zoomOut,
        star: Assets.svg.icons.actions.star,
        starFilled: Assets.svg.icons.actions.starFilled,
        login: Assets.svg.icons.actions.logIn,
        logout: Assets.svg.icons.actions.logOut,
        menu: CCActionMenuIcon.asset(),
        eye: CCActionEyeIcon.asset(),
        download: CCActionDownloadIcon.asset(),
        upload: CCActionUploadIcon.asset(),
        share: CCActionShareIcon.asset(),
        settings: CCActionSettingsIcon.asset(),
        heart: CCActionHeartIcon.asset(),
        link: CCActionLinkIcon.asset(),
    );
}

@immutable
class CCActionEyeIcon {
    final SvgGenImage open;
    final SvgGenImage off;

    const CCActionEyeIcon._({
        required this.open,
        required this.off,
    });

    factory CCActionEyeIcon.asset() => CCActionEyeIcon._(
        open: Assets.svg.icons.actions.eye,
        off: Assets.svg.icons.actions.eyeOff,
    );

}

@immutable
class CCActionDownloadIcon {
    final SvgGenImage main;
    final SvgGenImage cloud;

    const CCActionDownloadIcon._({
        required this.main,
        required this.cloud,
    });

    factory CCActionDownloadIcon.asset() => CCActionDownloadIcon._(
        main: Assets.svg.icons.actions.download,
        cloud: Assets.svg.icons.actions.downloadCloud,
    );
}

@immutable
class CCActionUploadIcon {
    final SvgGenImage main;
    final SvgGenImage cloud;

    const CCActionUploadIcon._({
        required this.main,
        required this.cloud,
    });

    factory CCActionUploadIcon.asset() => CCActionUploadIcon._(
        main: Assets.svg.icons.actions.upload,
        cloud: Assets.svg.icons.actions.uploadCloud,
    );
}

@immutable
class CCActionShareIcon {
    final SvgGenImage main;
    final SvgGenImage cloud;

    const CCActionShareIcon._({
        required this.main,
        required this.cloud,
    });

    factory CCActionShareIcon.asset() => CCActionShareIcon._(   
        main: Assets.svg.icons.actions.share,
        cloud: Assets.svg.icons.actions.shareAlt,
    );
}


@immutable
class CCActionSettingsIcon {
    final SvgGenImage main;
    final SvgGenImage cog;

    const CCActionSettingsIcon._({
        required this.main,
        required this.cog,
    });

    factory CCActionSettingsIcon.asset() => CCActionSettingsIcon._(
        main: Assets.svg.icons.actions.settings,
        cog: Assets.svg.icons.actions.settingsCog,
    );
}

@immutable
class CCActionHeartIcon {
    final SvgGenImage main;
    final SvgGenImage hand;
    final SvgGenImage circle;
    final SvgGenImage hearts;

    const CCActionHeartIcon._({
        required this.main,
        required this.hand,
        required this.circle,
        required this.hearts,
    });

    factory CCActionHeartIcon.asset() => CCActionHeartIcon._(
        main: Assets.svg.icons.actions.heart,
        hand: Assets.svg.icons.actions.heartHand,
        circle: Assets.svg.icons.actions.heartCircle,
        hearts: Assets.svg.icons.actions.hearts,
    );
}

@immutable
class CCActionLinkIcon {
    final SvgGenImage main;
    final SvgGenImage broken;
    final SvgGenImage externalLink;

    const CCActionLinkIcon._({
        required this.main,
        required this.broken,
        required this.externalLink,
    });

    factory CCActionLinkIcon.asset() => CCActionLinkIcon._(
        main: Assets.svg.icons.actions.link,
        broken: Assets.svg.icons.actions.linkBroken,
        externalLink: Assets.svg.icons.actions.linkExternal,
    );
}   

@immutable
class CCActionMenuIcon {
    final SvgGenImage hamburger;
    final SvgGenImage grid;

    const CCActionMenuIcon._({
        required this.hamburger,
        required this.grid,
    });

    factory CCActionMenuIcon.asset() => CCActionMenuIcon._(
        hamburger: Assets.svg.icons.actions.menu,
        grid: Assets.svg.icons.actions.menuGrid,
    );
}
