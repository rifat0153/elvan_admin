import 'package:elvan_admin/features/home/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/order_details.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_item.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewOrderScreen extends HookConsumerWidget {
  const NewOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final orderDeatilsState = ref.watch(newOrderProvider);
    final orderDeatilsNotifier = ref.watch(newOrderProvider.notifier);
    return Row(
      children: [
        AnimatedContainer(
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 500),
          child: Container(
            color: AppColors.white,
            width:AppSize.width(context) - orderDeatilsState.xOffset,
            height: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                HomeAppBar(
                    onClick: () {
                      menuNotifier.open();
                    },
                    title: AppStrings.newOrders),
                Expanded(
                    child: SizedBox(
                  width: AppSize.width(context),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: AppSize.width(context) / 1.8,
                          child: ListView.builder(
                            itemCount: 10,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return OrderItem(
                                index: index,
                                selectedInedx: orderDeatilsState.selectedindex,
                                onClick: () {
                                  orderDeatilsNotifier.selecteItem(
                                      context: context, index: index);
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),

        //****************Order Details */
        orderDeatilsState.isOpenDetatils ? const OrderDetatils() : Container()
      ],
    );
  }
}
