import 'package:config/config.dart';
import 'package:core/src/log/log.dart';

import 'package:core/src/network/http/http_client.dart';

import 'package:core/src/network/http/http_setting.dart';
import 'package:dependencies/dependencies.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'package:dependencies/injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';

@module
abstract class RegisterModule {
  Logger get logger => Logger(
        filter: ReleaseLogFilter(),
        printer: PrefixPrinter(
          SimpleLogPrinter(),
          error: 'CarCrewError -',
          debug: 'CarCrewLog -',
          fatal: 'CarCrewFatal -',
          info: 'CarCrewInfo -',
          trace: 'CarCrewTrace -',
          warning: 'CarCrewWarning -',
        ),
      );

  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();

  
  HttpClient get httpClient => HttpClient.init(
        HttpSetting(
          baseUrl: Env.apiBaseUrl,
        ),
      );
  
  
}
