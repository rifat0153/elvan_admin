import 'package:auto_route/annotations.dart';
import 'package:elvan_admin/features/order/ui/notifer/new_order_screen_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/empty_widget.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/new_order_bottom.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/components/error/error_widget.dart';
import 'package:elvan_admin/shared/components/loader/loader_widget.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class NewOrderScreen extends HookConsumerWidget {
  const NewOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(newOrderScreenProvider.notifier);

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
                    notifier.onEvent(NewItemEvent.onDrawer(context: context));
                  },
                  title: AppStrings.newOrders),
              Expanded(
                child: Consumer(builder: (context, ref, child) {
                  // final newOrderStream = ref.watch(newOrderStreamProvider);
                  final state = ref.watch(newOrderScreenProvider);

                  final orderDeatils = ref.watch(orderDtatilsProvider);
                  return state.when(
                    data: (data) {
                      if (data.isEmpty) {
                        return const EmptyWidget(title: AppStrings.noOrder, icon: Icons.local_dining_outlined);
                      }
                      return Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ListView.builder(
                                  itemCount: data.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (BuildContext context, int index) {
                                    return OrderItem(
                                      key: Key(data[index].id),
                                      order: data[index],
                                      selectedOrder: orderDeatils.order,
                                      onClick: () {
                                        notifier.onEvent(NewItemEvent.selecteItem(context: context, order: data[index]));
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: NewOrderBottom(
                              orders: data,
                            ),
                          )
                        ],
                      );
                    },
                    error: (error, stackTrace) => MErrorWidget(
                      onTab: () {
                        notifier.onEvent(const NewItemEvent.refresh());
                      },
                    ),
                    loading: () => const LoaderWidget(),
                  );
                }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
