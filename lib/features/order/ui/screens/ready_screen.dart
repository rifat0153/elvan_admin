import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/ready_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/ready_item.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/processing_item.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReadyScreen extends HookConsumerWidget {
  const ReadyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final state = ref.watch(readyOrderProvider);
    final notifier = ref.watch(readyOrderProvider.notifier);
      final orderDetatilsNotifier = ref.watch(orderDtatilsProvider.notifier);
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
                    menuNotifier.open();
                  },
                  title: AppStrings.ready),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      state.when(loading: 
                      () {
                        return  SizedBox(
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
                      data: (data) => ListView.builder(
                        itemCount: data.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return ReadyItem(
                            order: data[index],
                            selectedOrder: data[index],
                            onClick: () {
                              Scaffold.of(context).openEndDrawer();
                                orderDetatilsNotifier.selecteItem(
                                      context: context, order: data[index]);
                            },
                          );
                        },
                      ), 
                      
                      error:  (err ,st) {
                        return SizedBox(
                        width: AppSize.width(context),
                              height: AppSize.hight(context),
                         child:Center(
                            child: Text(
                              "${err}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(color: AppColors.primaryRed),
                            ),
                          )
                        );
                      }, )
                      
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
