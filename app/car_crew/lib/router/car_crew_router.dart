import 'package:dependencies/auto_route/auto_route.dart';
import 'package:home/home.dart';
import 'package:car_crew/presentation/presentation.dart';
import 'package:car_crew/router/router.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class CarCrewRouter extends RootStackRouter {

  final _homeRouter = HomeRouter();

  //! IMPORTANT: This is the entry point for the new routes.
  //! Don't delete this line if you want to generate the new routes with
  //! our `feature_monorepo_skeleton` brick.
  // EntryPointNewRoutes

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
        ),
        ..._homeRouter.routes,
        // AppendNewRoutes
      ];
}
