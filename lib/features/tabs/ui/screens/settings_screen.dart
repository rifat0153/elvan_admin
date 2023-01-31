import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_tab_notifier.dart';

import 'package:elvan_admin/features/tabs/ui/screens/dasktop/desktop_settings_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/tabs/tab_settings_screen.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuState = ref.watch(menuProvider);
    final navigation = ref.watch(navigatorProvider.notifier);
    final tabNotifier = ref.watch(menuTabProvider.notifier);
    final selectedIndex = ref.watch(menuTabProvider);
    return AutoTabsRouter(
      routes: const [AddItemRoute(), TimerRoute()],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return ResponsiveLayout.isDesktop(context)
            ? DesktopSettingsScreen(
                menuState: menuState,
                tabsRouter: tabsRouter,
                child: child,
              )
            : TabSettingsScreen(
                menuState: menuState, tabsRouter: tabsRouter, child: child);
      },
    );
  }
}
