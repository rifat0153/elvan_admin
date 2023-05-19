import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_icon_btn.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LeftTabScreen extends HookConsumerWidget {
  const LeftTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final menuState = ref.watch(menuProvider);
    return AutoTabsRouter.tabBar(
      routes: const [HomeRoute(), SettingsRoute()],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Material(
          color: Colors.transparent,
          child: SizedBox(
            width: AppSize.width(context),
            child: Row(
              children: [
                menuState.isOpenMenu ? LeftBar(tabsRouter: tabsRouter) : Container(),
                //*********  Layout Two ****** */
                Expanded(
                  child: AnimatedContainer(
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 500),
                    child: Container(color: AppColors.grayF7, child: child),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class LeftBar extends StatelessWidget {
  const LeftBar({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 79,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 72,
            decoration: const BoxDecoration(color: AppColors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                //**********Logo********** */
                Container(
                  width: 48,
                  height: 48,
                  margin: const EdgeInsets.only(top: 24),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(border: Border.all(color: AppColors.gray400), borderRadius: BorderRadius.circular(8)),
                  child: SizedBox(width: 25, height: 28, child: SvgPicture.asset(AppAssets.logo)),
                ),

                //********* Order List  */
                Padding(
                  padding: const EdgeInsets.only(top: 38),
                  child: MenuIconBtn(
                      seleectedIndex: tabsRouter.activeIndex,
                      index: 0,
                      onClick: () {
                        tabsRouter.setActiveIndex(0);
                      },
                      path: AppAssets.order),
                ),

                const Spacer(),
                //********* settings  */
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: MenuIconBtn(
                      seleectedIndex: tabsRouter.activeIndex,
                      index: 1,
                      onClick: () {
                        tabsRouter.setActiveIndex(1);
                      },
                      path: AppAssets.settings),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
