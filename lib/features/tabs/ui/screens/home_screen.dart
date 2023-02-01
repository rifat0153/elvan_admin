import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/screens/dasktop/desktop_home_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/mobile/mobile_home_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/tabs/tabs_home_screen.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuState = ref.watch(menuProvider);

    return AutoTabsRouter(
      routes: const [
        NewOrderRoute(),
        ProcceingRoute(),
        ReadyRoute(),
        DeliveredRoute()
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return ResponsiveLayout(
            mobile: MobileHomeScreen(
              menuState: menuState,
              tabsRouter: tabsRouter,
              child: child,
            ),
            tablet: TabsHomeScreen(
              menuState: menuState,
              tabsRouter: tabsRouter,
              child: child,
            ),
            desktop: DesktopHomeScreen(
              menuState: menuState,
              tabsRouter: tabsRouter,
              child: child,
            ),
            smallMobile: MobileHomeScreen(
                menuState: menuState, tabsRouter: tabsRouter, child: child));
      },
    );
  }
}
