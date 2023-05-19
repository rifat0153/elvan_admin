import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/screens/childs/child_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuState = ref.watch(menuProvider);

    return AutoTabsRouter.tabBar(
      routes: const [NewOrderRoute(), ProcceingRoute(), ReadyRoute(), DeliveredRoute()],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return ChildHomeScreen(
          menuState: menuState,
          tabsRouter: tabsRouter,
          child: child,
        );
      },
    );
  }
}
