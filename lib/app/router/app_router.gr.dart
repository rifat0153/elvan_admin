// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:elvan_admin/features/auth/ui/screens/login_screen.dart' as _i8;
import 'package:elvan_admin/features/foods/ui/screen/foods_screen.dart' as _i10;
import 'package:elvan_admin/features/order/ui/screens/delivered_screen.dart'
    as _i6;
import 'package:elvan_admin/features/order/ui/screens/new_order_screen.dart'
    as _i7;
import 'package:elvan_admin/features/order/ui/screens/processing_screen.dart'
    as _i5;
import 'package:elvan_admin/features/order/ui/screens/ready_screen.dart' as _i4;
import 'package:elvan_admin/features/tabs/ui/screens/home_screen.dart' as _i3;
import 'package:elvan_admin/features/tabs/ui/screens/left_tab_screent.dart'
    as _i2;
import 'package:elvan_admin/features/tabs/ui/screens/settings_screen.dart'
    as _i1;
import 'package:elvan_admin/features/timer/ui/screens/timer_screen.dart' as _i9;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SettingsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SettingsScreen(),
      );
    },
    LeftTabRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LeftTabScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    ReadyRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ReadyScreen(),
      );
    },
    ProcceingRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProcceingScreen(),
      );
    },
    DeliveredRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DeliveredScreen(),
      );
    },
    NewOrderRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NewOrderScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginScreen(),
      );
    },
    TimerRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TimerScreen(),
      );
    },
    FoodsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.FoodsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.SettingsScreen]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LeftTabScreen]
class LeftTabRoute extends _i11.PageRouteInfo<void> {
  const LeftTabRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LeftTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeftTabRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ReadyScreen]
class ReadyRoute extends _i11.PageRouteInfo<void> {
  const ReadyRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ReadyRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadyRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProcceingScreen]
class ProcceingRoute extends _i11.PageRouteInfo<void> {
  const ProcceingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProcceingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProcceingRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DeliveredScreen]
class DeliveredRoute extends _i11.PageRouteInfo<void> {
  const DeliveredRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DeliveredRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeliveredRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NewOrderScreen]
class NewOrderRoute extends _i11.PageRouteInfo<void> {
  const NewOrderRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NewOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewOrderRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TimerScreen]
class TimerRoute extends _i11.PageRouteInfo<void> {
  const TimerRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TimerRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimerRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.FoodsScreen]
class FoodsRoute extends _i11.PageRouteInfo<void> {
  const FoodsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FoodsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FoodsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
