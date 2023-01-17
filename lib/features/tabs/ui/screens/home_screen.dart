import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_tab_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_food.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_icon_btn.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_order.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuState = ref.watch(menuProvider);
    final navigation = ref.watch(navigatorProvider.notifier);
    final tabNotifier = ref.watch(menuTabProvider.notifier);
    final selectedIndex = ref.watch(menuTabProvider);
    return AutoTabsRouter(
      routes: const [
        NewOrderRoute(),
        ProcceingRoute(),
        ReadyRoute(),
        DeliveredRoute()
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        final List<Widget> widgets = [
          Container(),
          MenuOrder(
            router: tabsRouter,
          ),
          const MenuFood(),
          Container()
        ];

        return Scaffold(
          body: Stack(
            children: [
              // ************* Menu Layout ****************
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //*********  Layout one  ****** */

                    //*********  Layout Two ****** */
                    AnimatedContainer(
                      curve: Curves.easeOut,
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: 312,
                        color: AppColors.grayF7,
                        transform: Matrix4.translationValues(
                            menuState.xOffsetSubChild, menuState.yOffset, 1.0),
                        child: MenuOrder(
                          router: tabsRouter,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // ************* Home content Layout **************
              AnimatedContainer(
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  transform: Matrix4.translationValues(
                      menuState.xOffset, menuState.yOffset, 1.0),
                  color: AppColors.white,
                  child: child,
                ),
              ),
            ],
          ),
          endDrawer:
              Container(color: AppColors.white, child: const OrderDetatils()),
        );
      },
    );
  }
}
