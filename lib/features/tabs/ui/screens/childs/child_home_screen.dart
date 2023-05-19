import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/home_menu.dart';
import 'package:elvan_admin/features/tabs/ui/states/menu_state.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChildHomeScreen extends HookConsumerWidget {
  final Widget child;
  const ChildHomeScreen({
    Key? key,
    required this.menuState,
    required this.tabsRouter,
    required this.child,
  }) : super(key: key);

  final MenuState menuState;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderDetails = ref.watch(orderDtatilsProvider);

    return Scaffold(
      body: Row(
        children: [
          if (menuState.isOpenMenu)
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.grayF7,
                child: HomeMenu(
                  router: tabsRouter,
                ),
              ),
            ),
          Expanded(
            flex: menuState.isOpenMenu ? 7 : 8,
            child: Container(
              color: AppColors.white,
              child: child,
            ),
          ),
          if (orderDetails.isDetailsPanelOpen)
            const Expanded(
              flex: 2,
              child: OrderDetatils(),
            )
        ],
      ),
    );
  }
}
