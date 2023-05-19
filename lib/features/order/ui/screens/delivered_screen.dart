import 'package:auto_route/annotations.dart';
import 'package:elvan_admin/features/order/ui/notifer/delivered_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/delivered_item.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/empty_widget.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DeliveredScreen extends HookConsumerWidget {
  const DeliveredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final state = ref.watch(deliverdOrderProvider);
    final notifier = ref.watch(deliverdOrderProvider.notifier);
    final orderDetatilsNotifier = ref.watch(orderDtatilsProvider.notifier);
    final orderDetatilsState = ref.watch(orderDtatilsProvider);
    final scrollController = useScrollController();

    useEffect(() {
      notifier.getData();
      scrollController.addListener(() {
        if (scrollController.offset >= scrollController.position.maxScrollExtent && !scrollController.position.outOfRange) {
          notifier.nextData();
        }
      });
      return () {
        scrollController.dispose();
      };
    }, const []);

    return Stack(
      children: [
        //****************Order Details */

        Container(
          color: AppColors.white,
          width: AppSize.width(context),
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              HomeAppBar(
                  onClick: () {
                    Scaffold.of(context).openDrawer();
                    menuNotifier.open();
                  },
                  title: AppStrings.delivered),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      state.loading
                          ? SizedBox(
                              width: AppSize.width(context),
                              height: AppSize.hight(context),
                              child: const Center(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            )
                          : Container(),
                      state.orders.isEmpty
                          ? const EmptyWidget(title: AppStrings.noDeliveredOrder, icon: Icons.local_dining_outlined)
                          : ListView.builder(
                              itemCount: state.orders.length,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                final OrderDto order = OrderDto.fromJson(state.orders[index].data()!);
                                return DeliveredItem(
                                  order: Order.fromDto(order),
                                  key: Key(order.id),
                                  selectedOrder: orderDetatilsState.order,
                                  onClick: () {
                                    Scaffold.of(context).openEndDrawer();
                                    orderDetatilsNotifier.selecteItem(context: context, order: Order.fromDto(order));
                                  },
                                );
                              },
                            ),
                      state.haseMore
                          ? const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
