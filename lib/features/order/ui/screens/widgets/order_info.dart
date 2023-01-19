import 'package:elvan_admin/features/order/ui/screens/widgets/order_info_widget.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
   
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Flexible(
          flex: 2,
          child: OrderInfoWidget(
            title: AppStrings.nameAndPhone,
            value: "Mahabubur Rahaman +123 456 789",
          ),
        ),
        Flexible(
          flex: 2,
          child: OrderInfoWidget(
            title: AppStrings.orderedTime,
            value: "12.00 PM",
          ),
        ),
        Flexible(
          flex: 2,
          child: OrderInfoWidget(
            title: AppStrings.amount,
            value: "${AppStrings.dollar} 499",
          ),
        ),
        Spacer(),
      ],
    );
  }
}
