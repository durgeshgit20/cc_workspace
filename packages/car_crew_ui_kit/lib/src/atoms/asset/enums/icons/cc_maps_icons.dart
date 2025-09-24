part of 'cc_icons.dart';

enum CCMapsIcons implements CCIcons {
  compass,
  globe,
  globeWeb,
  map,
  mapSquare,
  marker,
  markerPin,
  navigationPointer,
  navigationPointerOff,
  passport,
  rocket,
  route,
  ticket,
  weatherCloud,
  weatherDarkMoon,
  weatherLightSun,
  weatherStars,
  weatherWaves,
  ;

  @override
  CCAssetData<SvgGenImage> get data => switch (this) {
        compass => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.compass,
            type: CCAssetType.svg,
          ),
        globe => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.globe.globe,
            type: CCAssetType.svg,
          ),
        globeWeb => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.globe.web,
            type: CCAssetType.svg,
          ),
        map => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.map.main,
            type: CCAssetType.svg,
          ),
        mapSquare => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.map.square,
            type: CCAssetType.svg,
          ),
        marker => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.marker.mark,
            type: CCAssetType.svg,
          ),
        markerPin => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.marker.pin,
            type: CCAssetType.svg,
          ),
        navigationPointer => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.navigation.pointer,
            type: CCAssetType.svg,
          ),
        navigationPointerOff => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.maps.navigation.pointerOff,
            type: CCAssetType.svg,
          ),
        passport => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.passport,
            type: CCAssetType.svg,
          ),
        rocket => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.rocket,
            type: CCAssetType.svg,
          ),
        route => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.route,
            type: CCAssetType.svg,
          ),
        ticket => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.ticket,
            type: CCAssetType.svg,
          ),
        weatherCloud => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.weather.cloud,
            type: CCAssetType.svg,
          ),
        weatherDarkMoon => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.weather.darkMoon,
            type: CCAssetType.svg,
          ),
        weatherLightSun => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.weather.lightSun,
            type: CCAssetType.svg,
          ),
        weatherStars => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.weather.stars,
            type: CCAssetType.svg,
          ),
        weatherWaves => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.maps.weather.waves,
            type: CCAssetType.svg,
          ),
      };
}
