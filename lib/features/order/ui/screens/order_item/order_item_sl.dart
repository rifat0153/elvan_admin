import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/widgets/food_variants.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/widgets/food_variants_sl.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/widgets/order_info.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/widgets/order_info_m.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/widgets/order_timer.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/widgets/order_timer_sl.dart';
import 'package:elvan_admin/shared/components/cards/eCard.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderItemSL extends HookConsumerWidget {
  final int index;
  final int? selectedInedx;
  final void Function() onClick;
  const OrderItemSL(
      {Key? key,
      required this.index,
      this.selectedInedx,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: AppSize.width(context) / 1.1),
          child: GestureDetector(
            onTap: onClick,
            child: Card(
              shape: RoundedRectangleBorder(
                  side: selectedInedx != null
                      ? BorderSide(
                          color: index == selectedInedx
                              ? AppColors.primaryRed
                              : AppColors.grayA7)
                      : const BorderSide(color: AppColors.grayA7),
                  borderRadius: BorderRadius.circular(AppSize.radiusSL)),
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 198,
                ),
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //** row by Order info section */
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: AppSize.width(context) / 2.4,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          OrderInfoM(),
                          SizedBox(
                            height: 40,
                          ),
                          FoodVarientsSL()
                        ],
                      ),
                    ),

                    //** row by Order set time section */
                    const OrderTimerSL()
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
