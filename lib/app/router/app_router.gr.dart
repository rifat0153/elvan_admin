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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../features/auth/ui/screens/login_screen.dart' as _i1;
import '../../features/foods/ui/screen/add_items_screen.dart' as _i10;
import '../../features/foods/ui/screen/foods_screen.dart' as _i9;
import '../../features/order/ui/screens/delivered_screen.dart' as _i8;
import '../../features/order/ui/screens/new_order_screen.dart' as _i5;
import '../../features/order/ui/screens/processing_screen.dart' as _i6;
import '../../features/order/ui/screens/ready_screen.dart' as _i7;
import '../../features/tabs/ui/screens/home_screen.dart' as _i3;
import '../../features/tabs/ui/screens/left_tab_screent.dart' as _i2;
import '../../features/tabs/ui/screens/settings_screen.dart' as _i4;
import '../../features/timer/ui/screens/timer_screen.dart' as _i11;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    Login.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    Dashboard.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LeftTabScreen(),
      );
    },
    Home.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    Settings.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsScreen(),
      );
    },
    NewOrderRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.NewOrderScreen(),
      );
    },
    ProcceingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProcceingScreen(),
      );
    },
    ReadyRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ReadyScreen(),
      );
    },
    DeliveredRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.DeliveredScreen(),
      );
    },
    FoodsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.FoodsScreen(),
      );
    },
    AddItemRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.AddItemScreen(),
      );
    },
    TimerRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.TimerScreen(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/dashboard',
          fullMatch: true,
        ),
        _i12.RouteConfig(
          Login.name,
          path: '/login',
        ),
        _i12.RouteConfig(
          Dashboard.name,
          path: '/dashboard',
          children: [
            _i12.RouteConfig(
              Home.name,
              path: 'home',
              parent: Dashboard.name,
              children: [
                _i12.RouteConfig(
                  NewOrderRoute.name,
                  path: '',
                  parent: Home.name,
                ),
                _i12.RouteConfig(
                  ProcceingRoute.name,
                  path: 'processing',
                  parent: Home.name,
                ),
                _i12.RouteConfig(
                  ReadyRoute.name,
                  path: 'ready',
                  parent: Home.name,
                ),
                _i12.RouteConfig(
                  DeliveredRoute.name,
                  path: 'delivered',
                  parent: Home.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              Settings.name,
              path: 'settings',
              parent: Dashboard.name,
              children: [
                _i12.RouteConfig(
                  FoodsRoute.name,
                  path: 'foods',
                  parent: Settings.name,
                ),
                _i12.RouteConfig(
                  AddItemRoute.name,
                  path: 'add',
                  parent: Settings.name,
                ),
                _i12.RouteConfig(
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
class Login extends _i12.PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/login',
        );

  static const String name = 'Login';
}

/// generated route for
/// [_i2.LeftTabScreen]
class Dashboard extends _i12.PageRouteInfo<void> {
  const Dashboard({List<_i12.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i3.HomeScreen]
class Home extends _i12.PageRouteInfo<void> {
  const Home({List<_i12.PageRouteInfo>? children})
      : super(
          Home.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i4.SettingsScreen]
class Settings extends _i12.PageRouteInfo<void> {
  const Settings({List<_i12.PageRouteInfo>? children})
      : super(
          Settings.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'Settings';
}

/// generated route for
/// [_i5.NewOrderScreen]
class NewOrderRoute extends _i12.PageRouteInfo<void> {
  const NewOrderRoute()
      : super(
          NewOrderRoute.name,
          path: '',
        );

  static const String name = 'NewOrderRoute';
}

/// generated route for
/// [_i6.ProcceingScreen]
class ProcceingRoute extends _i12.PageRouteInfo<void> {
  const ProcceingRoute()
      : super(
          ProcceingRoute.name,
          path: 'processing',
        );

  static const String name = 'ProcceingRoute';
}

/// generated route for
/// [_i7.ReadyScreen]
class ReadyRoute extends _i12.PageRouteInfo<void> {
  const ReadyRoute()
      : super(
          ReadyRoute.name,
          path: 'ready',
        );

  static const String name = 'ReadyRoute';
}

/// generated route for
/// [_i8.DeliveredScreen]
class DeliveredRoute extends _i12.PageRouteInfo<void> {
  const DeliveredRoute()
      : super(
          DeliveredRoute.name,
          path: 'delivered',
        );

  static const String name = 'DeliveredRoute';
}

/// generated route for
/// [_i9.FoodsScreen]
class FoodsRoute extends _i12.PageRouteInfo<void> {
  const FoodsRoute()
      : super(
          FoodsRoute.name,
          path: 'foods',
        );

  static const String name = 'FoodsRoute';
}

/// generated route for
/// [_i10.AddItemScreen]
class AddItemRoute extends _i12.PageRouteInfo<void> {
  const AddItemRoute()
      : super(
          AddItemRoute.name,
          path: 'add',
        );

  static const String name = 'AddItemRoute';
}

/// generated route for
/// [_i11.TimerScreen]
class TimerRoute extends _i12.PageRouteInfo<void> {
  const TimerRoute()
      : super(
          TimerRoute.name,
          path: 'timer',
        );

  static const String name = 'TimerRoute';
}
