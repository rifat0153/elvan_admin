// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../features/auth/ui/screens/login_screen.dart' as _i1;
import '../../features/foods/ui/screen/foods_screen.dart' as _i9;
import '../../features/order/ui/screens/delivered_screen.dart' as _i8;
import '../../features/order/ui/screens/new_order_screen.dart' as _i5;
import '../../features/order/ui/screens/processing_screen.dart' as _i6;
import '../../features/order/ui/screens/ready_screen.dart' as _i7;
import '../../features/tabs/ui/screens/home_screen.dart' as _i3;
import '../../features/tabs/ui/screens/left_tab_screent.dart' as _i2;
import '../../features/tabs/ui/screens/settings_screen.dart' as _i4;
import '../../features/timer/ui/screens/timer_screen.dart' as _i10;
import 'route_gaurds.dart' as _i13;

class AppRouter extends _i11.RootStackRouter {
  AppRouter({
    _i12.GlobalKey<_i12.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i13.AuthGuard authGuard;

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    Login.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    Dashboard.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LeftTabScreen(),
      );
    },
    Home.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    Settings.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsScreen(),
      );
    },
    NewOrderRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.NewOrderScreen(),
      );
    },
    ProcceingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProcceingScreen(),
      );
    },
    ReadyRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ReadyScreen(),
      );
    },
    DeliveredRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.DeliveredScreen(),
      );
    },
    FoodsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.FoodsScreen(),
      );
    },
    TimerRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.TimerScreen(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/dashboard',
          fullMatch: true,
        ),
        _i11.RouteConfig(
          Login.name,
          path: '/login',
        ),
        _i11.RouteConfig(
          Dashboard.name,
          path: '/dashboard',
          guards: [authGuard],
          children: [
            _i11.RouteConfig(
              Home.name,
              path: 'home',
              parent: Dashboard.name,
              children: [
                _i11.RouteConfig(
                  NewOrderRoute.name,
                  path: '',
                  parent: Home.name,
                ),
                _i11.RouteConfig(
                  ProcceingRoute.name,
                  path: 'processing',
                  parent: Home.name,
                ),
                _i11.RouteConfig(
                  ReadyRoute.name,
                  path: 'ready',
                  parent: Home.name,
                ),
                _i11.RouteConfig(
                  DeliveredRoute.name,
                  path: 'delivered',
                  parent: Home.name,
                ),
              ],
            ),
            _i11.RouteConfig(
              Settings.name,
              path: 'settings',
              parent: Dashboard.name,
              children: [
                _i11.RouteConfig(
                  FoodsRoute.name,
                  path: 'foods',
                  parent: Settings.name,
                ),
                _i11.RouteConfig(
                  TimerRoute.name,
                  path: 'timer',
                  parent: Settings.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class Login extends _i11.PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/login',
        );

  static const String name = 'Login';
}

/// generated route for
/// [_i2.LeftTabScreen]
class Dashboard extends _i11.PageRouteInfo<void> {
  const Dashboard({List<_i11.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i3.HomeScreen]
class Home extends _i11.PageRouteInfo<void> {
  const Home({List<_i11.PageRouteInfo>? children})
      : super(
          Home.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i4.SettingsScreen]
class Settings extends _i11.PageRouteInfo<void> {
  const Settings({List<_i11.PageRouteInfo>? children})
      : super(
          Settings.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'Settings';
}

/// generated route for
/// [_i5.NewOrderScreen]
class NewOrderRoute extends _i11.PageRouteInfo<void> {
  const NewOrderRoute()
      : super(
          NewOrderRoute.name,
          path: '',
        );

  static const String name = 'NewOrderRoute';
}

/// generated route for
/// [_i6.ProcceingScreen]
class ProcceingRoute extends _i11.PageRouteInfo<void> {
  const ProcceingRoute()
      : super(
          ProcceingRoute.name,
          path: 'processing',
        );

  static const String name = 'ProcceingRoute';
}

/// generated route for
/// [_i7.ReadyScreen]
class ReadyRoute extends _i11.PageRouteInfo<void> {
  const ReadyRoute()
      : super(
          ReadyRoute.name,
          path: 'ready',
        );

  static const String name = 'ReadyRoute';
}

/// generated route for
/// [_i8.DeliveredScreen]
class DeliveredRoute extends _i11.PageRouteInfo<void> {
  const DeliveredRoute()
      : super(
          DeliveredRoute.name,
          path: 'delivered',
        );

  static const String name = 'DeliveredRoute';
}

/// generated route for
/// [_i9.FoodsScreen]
class FoodsRoute extends _i11.PageRouteInfo<void> {
  const FoodsRoute()
      : super(
          FoodsRoute.name,
          path: 'foods',
        );

  static const String name = 'FoodsRoute';
}

/// generated route for
/// [_i10.TimerScreen]
class TimerRoute extends _i11.PageRouteInfo<void> {
  const TimerRoute()
      : super(
          TimerRoute.name,
          path: 'timer',
        );

  static const String name = 'TimerRoute';
}
