import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details_tab.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/home_menu.dart';
import 'package:elvan_admin/features/tabs/ui/states/menu_state.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  final Widget child;
  const MobileHomeScreen(
      {Key? key,
      required this.menuState,
      required this.tabsRouter,
      required this.child})
      : super(key: key);

  final MenuState menuState;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          menuState.isOpenMenu
              ? Expanded(
                  flex: 4,
                  child: Container(
                    color: AppColors.grayF7,
                    child: HomeMenu(
                      router: tabsRouter,
                    ),
                  ),
                )
              : Container(),
          Expanded(
            flex: menuState.isOpenMenu ? 6 : 8,
            child: Container(
              color: AppColors.white,
              child: child,
            ),
          ),
        
        ],
      ),
      endDrawer:Container(
        color: Colors.white,
        width: 250,
        child: const OrderDetatilsTab()) ,
    );
  }
}
