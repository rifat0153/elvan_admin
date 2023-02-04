import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/process_order_notifier.dart';

import 'package:elvan_admin/features/order/ui/screens/order_item/processing_item.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/empty_widget.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';

import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProcceingScreen extends HookConsumerWidget {
  const ProcceingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final state = ref.watch(processOrderProvider);
    final notifier = ref.watch(processOrderProvider.notifier);
    final orderDetatilsNotifier = ref.watch(orderDtatilsProvider.notifier);
    final orderDetatilsState = ref.watch(orderDtatilsProvider);
   

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
                  title: AppStrings.processing),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      state.when(
                        loading: () {
                          return SizedBox(
                            width: AppSize.width(context),
                            height: AppSize.hight(context),
                            child: const Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          );
                        },
                        data: (data) => data.isEmpty
                            ? const EmptyWidget(
                                title: AppStrings.noProcessOrder,
                                icon: Icons.local_dining_outlined)
                            : ListView.builder(
                                itemCount: data.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return ProcessItem(
                                       key: Key(data[index].id),
                                    order: data[index],
                                    selectedOrder: orderDetatilsState.order,
                                    onBtnClick: () {
                                      ref
                                          .read(processOrderProvider.notifier)
                                          .onProcessing(context, data[index]);
                                      ref
                                          .read(orderDtatilsProvider.notifier)
                                          .close();
                                    },
                                    onClick: () {
                                      Scaffold.of(context).openEndDrawer();
                                      orderDetatilsNotifier.selecteItem(
                                          context: context, order: data[index]);
                                    },
                                  );
                                },
                              ),
                        error: (err, st) {
                          return SizedBox(
                              width: AppSize.width(context),
                              height: AppSize.hight(context),
                              child: Center(
                                child: Text(
                                  "${err}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: AppColors.primaryRed),
                                ),
                              ));
                        },
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
