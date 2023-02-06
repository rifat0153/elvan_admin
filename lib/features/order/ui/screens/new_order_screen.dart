import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/empty_widget.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/components/error/error_widget.dart';
import 'package:elvan_admin/shared/components/loader/loader_widget.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewOrderScreen extends HookConsumerWidget {
  const NewOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final orderDeatilsState = ref.watch(orderDtatilsProvider);
    final orderDetatilsNotifier = ref.watch(orderDtatilsProvider.notifier);
    final newOrderStream = ref.watch(newOrderStreamProvider);

    newOrderStream.when(
      loading: () => const Text(''),
      data: (v) => const Text(''),
      error: (e, s) => ElevatedButton(
        onPressed: () {
          ref.invalidate(newOrderStreamProvider);
        },
        child: Text(e.toString()),
      ),
    );

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
                  title: AppStrings.newOrders),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      newOrderStream.when(
                        data: (data) {
                          if (data.isEmpty) {
                            return const EmptyWidget(
                                title: AppStrings.noOrder,
                                icon: Icons.local_dining_outlined);
                          }
                          return ListView.builder(
                            itemCount: data.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return OrderItem(
                                key: Key(data[index].id),
                                order: data[index],
                                selectedOrder: orderDeatilsState.order,
                                onClick: () {
                                  Scaffold.of(context).openEndDrawer();
                                  orderDetatilsNotifier.selecteItem(
                                      context: context, order: data[index]);
                                },
                              );
                            },
                          );
                        },
                        error: (error, stackTrace) => MErrorWidget(
                          onTab: () {
                            ref.invalidate(newOrderStreamProvider);
                          },
                        ),
                        loading: () => const LoaderWidget(),
                      )
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
