import 'package:auto_route/annotations.dart';
import 'package:elvan_admin/features/delivered/ui/screens/delivered_screen.dart';
import 'package:elvan_admin/features/home/ui/screens/home_screen.dart';
import 'package:elvan_admin/features/order/ui/screens/new_order_screen.dart';
import 'package:elvan_admin/features/processing/ui/screens/processing_screen.dart';
import 'package:elvan_admin/features/ready/ui/screens/ready_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_router.gr.dart';

final appRouterProvider = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    RedirectRoute(path: '/', redirectTo: '/dashboard'),
    AutoRoute(
        path: '/dashboard',
        name: "Home",
        page: HomeScreen,
        initial: true,
        children: [
          AutoRoute(path: '', page: NewOrderScreen),
          AutoRoute(path: 'processing', page: ProcceingScreen),
          AutoRoute(path: 'ready', page: ReadyScreen),
          AutoRoute(path: 'delivered', page: DeliveredScreen),
        ])
  ],
)
class $AppRouter {}
