import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_tab_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/screens/dasktop/desktop_home_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/dasktop/desktop_settings_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/mobile/mobile_home_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/tabs/tabs_home_screen.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_food.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_icon_btn.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/home_menu.dart';
import 'package:elvan_admin/features/tabs/ui/states/menu_state.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      routes: const [FoodsRoute(), AddItemRoute(), TimerRoute()],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return DesktopSettingsScreen(
          menuState: menuState,
          tabsRouter: tabsRouter,
          child: child,
        );
      },
    );
  }
}
