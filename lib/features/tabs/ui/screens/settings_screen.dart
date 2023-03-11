import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/screens/childs/child_settings_screen.dart';


import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuState = ref.watch(menuProvider);
    return AutoTabsRouter(
      routes: const [AddItemRoute(), TimerRoute()],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return ChildSettingsScreen(
              menuState: menuState,
              tabsRouter: tabsRouter,
              child: child,
            );
      },
    );
  }
}
