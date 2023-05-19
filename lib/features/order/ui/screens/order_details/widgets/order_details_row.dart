import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class OrderDetailsRow extends StatelessWidget {
  final String title;
  final double value;
  const OrderDetailsRow({Key? key, required this.title, this.value = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "${AppStrings.dollar} $value",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
