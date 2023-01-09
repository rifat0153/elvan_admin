import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/features/home/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/home/ui/screens/widgets/menu_btn.dart';
import 'package:elvan_admin/features/home/ui/screens/widgets/menu_icon_btn.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menu = ref.watch(menuProvider.notifier);
    final navigation = ref.watch(navigatorProvider.notifier);
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
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.gray400),
                            borderRadius: BorderRadius.circular(8)),
                        child: SizedBox(
                            width: 25,
                            height: 28,
                            child: SvgPicture.asset(AppAssets.logo)),
                      ),

                      //********* Dashboard  */
                      Padding(
                        padding: const EdgeInsets.only(top: 39),
                        child: MenuIconBtn(
                            onClick: () {
                              navigation.pushRoute('/');
                            },
                            path: AppAssets.dashboard),
                      ),
                      //********* Order List  */
                      Padding(
                        padding: const EdgeInsets.only(top: 38),
                        child:
                            MenuIconBtn(onClick: () {}, path: AppAssets.order),
                      ),
                      //********* fork  */
                      Padding(
                        padding: const EdgeInsets.only(top: 38),
                        child:
                            MenuIconBtn(onClick: () {}, path: AppAssets.fork),
                      ),
                      const Spacer(),
                      //********* settings  */
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: MenuIconBtn(
                            onClick: () {}, path: AppAssets.settings),
                      )
                    ],
                  ),
                ),
                //*********  Layout Two ****** */
                Container(
                  width: 312,
                  color: AppColors.grayF7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        AppStrings.orders,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      //************ NewOrder */
                      Padding(
                        padding: const EdgeInsets.only(top: 34, left: 12),
                        child: MenuBtn(
                            onClick: () {
                              navigation.pushRoute('/');
                            },
                            title: AppStrings.newOrders),
                      ),
                      //************ Processing */
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 12),
                        child: MenuBtn(
                            onClick: () {
                              navigation.pushRoute('/dashboard/processing');
                            },
                            title: AppStrings.processing),
                      ),
                      //************ Ready */
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 12),
                        child: MenuBtn(
                            onClick: () {
                              navigation.pushRoute('/dashboard/ready');
                            },
                            title: AppStrings.ready),
                      ),
                      //************ Delivered */
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 12),
                        child: MenuBtn(
                            onClick: () {
                              navigation.pushRoute('/dashboard/delivered');
                            },
                            title: AppStrings.delivered),
                      )
                    ],
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
              transform:
                  Matrix4.translationValues(menu.xOffset,menu.yOffset, 1.0),
              color: Colors.white,
              child: const AutoRouter(),
            ),
          ),
        ],
      ),
    );
  }
}
