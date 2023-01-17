import 'package:elvan_admin/features/order/ui/screens/order_item/widgets/order_info_widget.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class OrderInfoM extends StatelessWidget {
  const OrderInfoM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          OrderInfoWidget(
            title: AppStrings.nameAndPhone,
            value: "Mahabubur Rahaman +123 456 789",
          ),
          OrderInfoWidget(
            title: AppStrings.orderedTime,
            value: "12.00 PM",
          ),
          OrderInfoWidget(
            title: AppStrings.amount,
            value: "${AppStrings.dollar} 499",
          ),
        ],
      ),
    );
  }
}
