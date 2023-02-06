import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';

class FoodVarientsTab extends StatelessWidget {
  final Order order;
  const FoodVarientsTab({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      direction: Axis.horizontal,
      children: order.instructions
          .map(
            (e) => VarientsItem(title: e),
          )
          .toList(),
    );
  }
}

class VarientsItem extends StatelessWidget {
  final String title;
  const VarientsItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      constraints: const BoxConstraints(maxWidth: 120),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.grayA7,
          borderRadius: BorderRadius.circular(AppSize.radiusSM)),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
