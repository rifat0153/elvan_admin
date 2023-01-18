import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details_tab.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/home_menu.dart';
import 'package:elvan_admin/features/tabs/ui/states/menu_state.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TabsHomeScreen extends HookConsumerWidget {
  final Widget child;
  const TabsHomeScreen(
      {Key? key,
      required this.menuState,
      required this.tabsRouter,
      required this.child})
      : super(key: key);

  final MenuState menuState;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderDetails = ref.watch(orderDtatilsProvider);
    return Scaffold(
      body: Row(
        children: [
          menuState.isOpenMenu
              ? Expanded(
                  flex: 2,
                  child: Container(
                    color: AppColors.grayF7,
                    child: HomeMenu(
                      router: tabsRouter,
                    ),
                  ),
                )
              : Container(),
          Expanded(
            flex: menuState.isOpenMenu ? 4 : 6,
            child: Container(
              color: AppColors.white,
              child: child,
            ),
          ),
        orderDetails.isOpenDetatils?  Expanded(
              flex: menuState.isOpenMenu ? 3 : 2,
              child: Padding(
                padding: EdgeInsets.only(right: menuState.isOpenMenu ? 79 : 0),
                child: const OrderDetatilsTab(),
              )): Container()
        ],
      ),
    );
  }
}
