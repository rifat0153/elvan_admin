import 'package:elvan_admin/shared/components/cards/eCard.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

class FoodVarients extends StatelessWidget {
  const FoodVarients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      direction: Axis.horizontal,
      children: [
        1,
        2,
        
      ]
          .map(
            (e) => const ECard(title: "Pizza ×2"),
          )
          .toList(),
    );
  }
}
