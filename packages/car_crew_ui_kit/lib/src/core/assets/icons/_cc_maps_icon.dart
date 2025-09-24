part of 'cc_icon_svg.dart';

@immutable
class CCMapsIcon {
    final SvgGenImage compass;
    final SvgGenImage passport;
    final SvgGenImage rocket;
    final SvgGenImage route;
    final SvgGenImage ticket;
    final CCGlobeMapsIcon globe;
    final CCMapMapsIcon map;
    final CCMarkerMapsIcon marker;
    final CCNavigationMapsIcon navigation;
    final CCWeatherMapsIcon weather;
    
    const CCMapsIcon._({
        required this.compass,
        required this.passport,
        required this.rocket,
        required this.route,
        required this.ticket,
        required this.globe,
        required this.map,
        required this.marker,
        required this.navigation,
        required this.weather,
    }); 

    factory CCMapsIcon.asset() => CCMapsIcon._(
        compass: Assets.svg.icons.maps.compass,
        passport: Assets.svg.icons.maps.passport,
        rocket: Assets.svg.icons.maps.rocket,
        route: Assets.svg.icons.maps.route,
        ticket: Assets.svg.icons.maps.ticket,
        globe: CCGlobeMapsIcon.asset(),
        map: CCMapMapsIcon.asset(),
        marker: CCMarkerMapsIcon.asset(),
        navigation: CCNavigationMapsIcon.asset(),
        weather: CCWeatherMapsIcon.asset(),
    );

}

@immutable
class CCGlobeMapsIcon {
    final SvgGenImage web;
    final SvgGenImage globe;

    const CCGlobeMapsIcon._({
        required this.web,
        required this.globe,
    });

    factory CCGlobeMapsIcon.asset() => CCGlobeMapsIcon._(
        web: Assets.svg.icons.maps.globeWeb,
        globe: Assets.svg.icons.maps.globe,
    );
}

@immutable
class CCMapMapsIcon {
    final SvgGenImage main;
    final SvgGenImage square;

    const CCMapMapsIcon._({
        required this.main,
        required this.square,
    });

    factory CCMapMapsIcon.asset() => CCMapMapsIcon._(
        main: Assets.svg.icons.maps.map,
        square: Assets.svg.icons.maps.mapSquare,
    );
    
}

@immutable
class CCMarkerMapsIcon {
    final SvgGenImage mark;
    final SvgGenImage pin;

    const CCMarkerMapsIcon._({
        required this.mark,
        required this.pin,
    });

    factory CCMarkerMapsIcon.asset() => CCMarkerMapsIcon._(
        mark: Assets.svg.icons.maps.mark,
        pin: Assets.svg.icons.maps.markerPin,
    );
}

@immutable
class CCNavigationMapsIcon {
    final SvgGenImage pointer;
    final SvgGenImage pointerOff;

    const CCNavigationMapsIcon._({
        required this.pointer,
        required this.pointerOff,
    });

    factory CCNavigationMapsIcon.asset() => CCNavigationMapsIcon._(
        pointer: Assets.svg.icons.maps.navigationPointer,
        pointerOff: Assets.svg.icons.maps.navigationPointerOff,
    );
}

@immutable
class CCWeatherMapsIcon {
    final SvgGenImage cloud;
    final SvgGenImage darkMoon;
    final SvgGenImage lightSun;
    final SvgGenImage stars;
    final SvgGenImage waves;

    const CCWeatherMapsIcon._({
        required this.cloud,
        required this.darkMoon,
        required this.lightSun,
        required this.stars,
        required this.waves,
    });

    factory CCWeatherMapsIcon.asset() => CCWeatherMapsIcon._(
        cloud: Assets.svg.icons.maps.cloud,
        darkMoon: Assets.svg.icons.maps.darkMoon,
        lightSun: Assets.svg.icons.maps.lightSun,
        stars: Assets.svg.icons.maps.stars,
        waves: Assets.svg.icons.maps.waves,
    );
}   
