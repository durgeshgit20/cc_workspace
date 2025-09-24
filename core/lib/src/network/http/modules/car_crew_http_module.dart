import 'package:core/src/di/di.dart';
import 'package:core/src/network/http/http.dart';

import 'package:core/src/network/http/http_client.dart';


import 'package:dependencies/injectable/injectable.dart';

@LazySingleton()
class CarCrewHttpModule extends HttpModule {
  
  CarCrewHttpModule() : super(getIt<HttpClient>());
  
  
}
