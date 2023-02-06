import 'package:elvan_admin/features/order/ui/screens/widgets/food_variants_tabs.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_timer_tab.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderItemTab extends HookConsumerWidget {
  final Order order;
  final Order? selectedOrder;
  final void Function() onClick;
  const OrderItemTab(
      {Key? key,
      required this.order,
      this.selectedOrder,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onClick,
            child: Card(
              shape: RoundedRectangleBorder(
                  side: selectedOrder != null
                      ? BorderSide(
                          color: order.id == selectedOrder?.id
                              ? AppColors.primaryRed
                              : AppColors.grayA7)
                      : const BorderSide(color: AppColors.grayA7),
                  borderRadius: BorderRadius.circular(AppSize.radiusSL)),
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 198,
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //** row by Order info section */
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: OrderInfo(
                        order: order,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        AppStrings.varients,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: AppColors.gray),
                      ),
                    ),
                    FoodVarientsTab(
                      order: order,
                    ),
                    //** row by Order set time section */
                    OrderTimerTab(
                      order: order,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
