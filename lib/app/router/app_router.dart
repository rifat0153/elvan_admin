import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/route_gaurds.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app_router.gr.dart';

final appRouterProvider = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        RedirectRoute(path: '/', redirectTo: '/dashboard'),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(path: '/dashboard', page: LeftTabRoute.page, initial: true, guards: [
          AuthGuard()
        ], children: [
          AutoRoute(path: 'home', page: HomeRoute.page, children: [
            AutoRoute(path: '', page: NewOrderRoute.page),
            AutoRoute(path: 'processing', page: ProcceingRoute.page),
            AutoRoute(path: 'ready', page: ReadyRoute.page),
            AutoRoute(path: 'delivered', page: DeliveredRoute.page),
          ]),
          AutoRoute(path: 'settings', page: SettingsRoute.page, children: [
            AutoRoute(path: 'foods', page: FoodsRoute.page),
            AutoRoute(path: 'timer', page: TimerRoute.page),
          ]),
        ]),
      ];
}
