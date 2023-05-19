import 'package:elvan_admin/features/order/domain/models/food_item_count.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_bottom_notifier.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewOrderBottom extends HookConsumerWidget {
  final List<Order> orders;
  const NewOrderBottom({super.key, required this.orders});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(orderBottomProvider(orders));
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(-2, -3),
              spreadRadius: -3,
              blurRadius: 9,
              color: Color.fromRGBO(71, 70, 70, 0.55),
            )
          ]),
      child: SizedBox(
        height: 100,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              AppStrings.ongoingTotal,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppColors.gray,
                  ),
            ),
          ),
          state.isNotEmpty
              ? Expanded(
                  child: Center(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: state.length,
                      itemBuilder: (BuildContext context, int index) {
                        final FoodItemCount item = state[index];
                        return OrderBottomItem(item: item);
                      },
                    ),
                  ),
                )
              : Container(),
        ]),
      ),
    );
  }
}

class OrderBottomItem extends StatelessWidget {
  const OrderBottomItem({
    super.key,
    required this.item,
  });

  final FoodItemCount item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${item.count}",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: AppColors.primaryRed,
                ),
          ),
          Text(
            item.itemName,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppColors.gray,
                ),
          ),
        ],
      ),
    );
  }
}
