import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/Settings_menu.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/home_menu.dart';
import 'package:elvan_admin/features/tabs/ui/states/menu_state.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobileSettingsScreen extends HookConsumerWidget {
  final Widget child;
  const MobileSettingsScreen(
      {Key? key,
      required this.menuState,
      required this.tabsRouter,
      required this.child})
      : super(key: key);

  final MenuState menuState;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifer = ref.watch(menuProvider.notifier);

    return Scaffold(
      body: Row(
        children: [
          // menuState.isOpenMenu
          //     ? Expanded(
          //         flex: 2,
          //         child: Container(
          //           color: AppColors.grayF7,
          //           child: SettingsMenu(
          //             router: tabsRouter,
          //           ),
          //         ),
          //       )
          //     : Container(),
          Expanded(
            flex: menuState.isOpenMenu ? 4 : 6,
            child: Container(
              color: AppColors.white,
              child: child,
            ),
          ),
        ],
      ),
      onDrawerChanged: (isOpened) {
        if (!isOpened) {
          menuNotifer.open();
        }
      },
      drawer: Container(
        color: AppColors.grayF7,
        width: 250,
        child: SettingsMenu(
          router: tabsRouter,
        ),
      ),
    );
  }
}
