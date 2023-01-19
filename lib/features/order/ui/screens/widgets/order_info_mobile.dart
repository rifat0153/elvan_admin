import 'package:elvan_admin/features/order/ui/screens/widgets/order_info_small_widget.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info_widget.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class OrderInfoMobile extends StatelessWidget {
  const OrderInfoMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          OrderInfoSmallWidget(
            title: AppStrings.nameAndPhone,
            value: "Mahabubur Rahaman +123 456 789",
          ),
          OrderInfoSmallWidget(
            title: AppStrings.orderedTime,
            value: "12.00 PM",
          ),
          OrderInfoSmallWidget(
            title: AppStrings.amount,
            value: "${AppStrings.dollar} 499",
          ),
        ],
      ),
    );
  }
}
