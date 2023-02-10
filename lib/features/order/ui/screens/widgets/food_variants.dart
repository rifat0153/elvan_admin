import 'package:elvan_admin/shared/components/cards/eCard.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';

class FoodVarients extends StatelessWidget {
  final Order order;
  const FoodVarients({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (order.instructions != null) {
      return order.instructions.isNotEmpty
          ? Wrap(
              spacing: 6.0,
              direction: Axis.horizontal,
              children: order.instructions
                  .map(
                    (e) => ECard(title: e),
                  )
                  .toList(),
            )
          : Container();
    } else {
      return Container();
    }
  }
}
