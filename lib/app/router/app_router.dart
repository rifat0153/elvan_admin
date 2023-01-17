import 'package:auto_route/annotations.dart';
import 'package:elvan_admin/features/foods/ui/screen/add_items_screen.dart';
import 'package:elvan_admin/features/foods/ui/screen/foods_screen.dart';
import 'package:elvan_admin/features/order/ui/screens/delivered_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/home_screen.dart';
import 'package:elvan_admin/features/order/ui/screens/new_order_screen.dart';
import 'package:elvan_admin/features/order/ui/screens/processing_screen.dart';
import 'package:elvan_admin/features/order/ui/screens/ready_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/left_tab_screent.dart';
import 'package:elvan_admin/features/tabs/ui/screens/settings_screen.dart';
import 'package:elvan_admin/features/timer/ui/screens/timer_screen.dart';
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
        name: "Dashboard",
        page: LeftTabScreen,
        initial: true,
        children: [
          AutoRoute(path: 'home', name: "Home", page: HomeScreen, children: [
            AutoRoute(path: '', page: NewOrderScreen),
            AutoRoute(path: 'processing', page: ProcceingScreen),
            AutoRoute(path: 'ready', page: ReadyScreen),
            AutoRoute(path: 'delivered', page: DeliveredScreen),
          ]),
          AutoRoute(
              path: 'settings',
              name: "Settings",
              page: SettingsScreen,
              children: [
                AutoRoute(path: 'foods', page: FoodsScreen),
                AutoRoute(path: 'add', page: AddItemScreen),
                AutoRoute(path: 'timer', page: TimerScreen),
              ]),
        ]),
  ],
)
class $AppRouter {}
