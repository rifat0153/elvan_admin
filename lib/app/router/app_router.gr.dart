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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../features/delivered/ui/screens/delivered_screen.dart' as _i5;
import '../../features/home/ui/screens/home_screen.dart' as _i1;
import '../../features/order/ui/screens/new_order_screen.dart' as _i2;
import '../../features/processing/ui/screens/processing_screen.dart' as _i3;
import '../../features/ready/ui/screens/ready_screen.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    NewOrderRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NewOrderScreen(),
      );
    },
    ProcceingRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProcceingScreen(),
      );
    },
    ReadyRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ReadyScreen(),
      );
    },
    DeliveredRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DeliveredScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/dashboard',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          Home.name,
          path: '/dashboard',
          children: [
            _i6.RouteConfig(
              NewOrderRoute.name,
              path: '',
              parent: Home.name,
            ),
            _i6.RouteConfig(
              ProcceingRoute.name,
              path: 'processing',
              parent: Home.name,
            ),
            _i6.RouteConfig(
              ReadyRoute.name,
              path: 'ready',
              parent: Home.name,
            ),
            _i6.RouteConfig(
              DeliveredRoute.name,
              path: 'delivered',
              parent: Home.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class Home extends _i6.PageRouteInfo<void> {
  const Home({List<_i6.PageRouteInfo>? children})
      : super(
          Home.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i2.NewOrderScreen]
class NewOrderRoute extends _i6.PageRouteInfo<void> {
  const NewOrderRoute()
      : super(
          NewOrderRoute.name,
          path: '',
        );

  static const String name = 'NewOrderRoute';
}

/// generated route for
/// [_i3.ProcceingScreen]
class ProcceingRoute extends _i6.PageRouteInfo<void> {
  const ProcceingRoute()
      : super(
          ProcceingRoute.name,
          path: 'processing',
        );

  static const String name = 'ProcceingRoute';
}

/// generated route for
/// [_i4.ReadyScreen]
class ReadyRoute extends _i6.PageRouteInfo<void> {
  const ReadyRoute()
      : super(
          ReadyRoute.name,
          path: 'ready',
        );

  static const String name = 'ReadyRoute';
}

/// generated route for
/// [_i5.DeliveredScreen]
class DeliveredRoute extends _i6.PageRouteInfo<void> {
  const DeliveredRoute()
      : super(
          DeliveredRoute.name,
          path: 'delivered',
        );

  static const String name = 'DeliveredRoute';
}
