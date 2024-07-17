import 'package:auto_route/auto_route.dart';
import 'package:learning_app/routes/app_routes.gr.dart';
import 'package:learning_app/routes/routes_name.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: RoutesName.splash,
          // initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: RoutesName.login,
        ),
        AutoRoute(
          page: SignupRoute.page,
          path: RoutesName.signup,
        ),
        AutoRoute(
          page: IndexRoute.page,
          path: RoutesName.index,
        ),
        AutoRoute(
          page: IndexcopyRoute.page,
          path: RoutesName.indexcopy1,
        ),
        AutoRoute(
          page: Indexcopy2Route.page,
          path: RoutesName.indexcopy2,
        ),
        AutoRoute(
          page: CategoryRoute.page,
          path: RoutesName.category,
        ),
        AutoRoute(
          page: CategoryOneRoute.page,
          path: RoutesName.category1,
        ),
        AutoRoute(
            page: CategoryTwoRoute.page,
            path: RoutesName.category2,
          ),
        AutoRoute(
            page: CategoryThreeRoute.page,
            path: RoutesName.category3,
            initial: true),
        AutoRoute(
          page: CategoryFourRoute.page,
          path: RoutesName.category4,
        ),
        AutoRoute(
          page: CategoryFiveRoute.page,
          path: RoutesName.category5,
        ),
      ];
}
