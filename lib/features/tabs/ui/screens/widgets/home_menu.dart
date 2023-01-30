import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/features/tabs/provider/order_count_provider.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_btn.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeMenu extends HookConsumerWidget {
  final TabsRouter router;
  const HomeMenu({
    required this.router,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigatorProvider.notifier);
    final newOrderState = ref.watch(newOrderCountProvider);
    final processState = ref.watch(processCountProvider);
    final readyState = ref.watch(readyCountProvider);
    final deliverdState = ref.watch(deliverdCountProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36, left: 24),
          child: Text(
            AppStrings.orders,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),

        //************ NewOrder */
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 24, right: 10),
          child: MenuBtn(
              index: 0,
               count: newOrderState,
              selectedIndex: router.activeIndex,
              onClick: () {
                router.setActiveIndex(0);
              },
              title: AppStrings.newOrders),
        ),
        //************ Processing */
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 24, right: 10),
          child: MenuBtn(
              selectedIndex: router.activeIndex,
              index: 1,
               count: processState,
              onClick: () {
                router.setActiveIndex(1);
              },
              title: AppStrings.processing),
        ),
        //************ Ready */
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 24, right: 10),
          child: MenuBtn(
              selectedIndex: router.activeIndex,
              index: 2,
              count: readyState,
              onClick: () {
                router.setActiveIndex(2);
              },
              title: AppStrings.ready),
        ),
        //************ Delivered */
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 24, right: 10),
          child: MenuBtn(
              selectedIndex: router.activeIndex,
              index: 3,
               count: deliverdState,
              onClick: () {
                router.setActiveIndex(3);
              },
              title: AppStrings.delivered),
        )
      ],
    );
  }
}
