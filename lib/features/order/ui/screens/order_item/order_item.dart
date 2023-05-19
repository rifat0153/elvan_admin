import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/food_variants.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_timer.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderItem extends HookConsumerWidget {
  final Order order;
  final Order? selectedOrder;
  final void Function() onClick;
  const OrderItem({Key? key, required this.order, this.selectedOrder, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderState = ref.watch(orderDtatilsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onClick,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: selectedOrder != null ? BorderSide(color: order.id == selectedOrder?.id ? AppColors.primaryRed : AppColors.grayA7) : const BorderSide(color: AppColors.grayA7),
                    borderRadius: BorderRadius.circular(AppSize.radiusSL)),
                child: Container(
                  // constraints:
                  //     BoxConstraints(maxWidth: AppSize.width(context) / 1.5),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //** row by Order info section */
                      Expanded(
                        flex: orderState.isDetailsPanelOpen ? 3 : 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OrderInfo(
                              order: order,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            FoodVarients(
                              order: order,
                            )
                          ],
                        ),
                      ),

                      //** row by Order set time section */
                      Expanded(
                          flex: 2,
                          child: OrderTimer(
                            order: order,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
