import 'package:elvan_admin/shared/components/cards/eCard.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

class FoodVarientsSL extends StatelessWidget {
  const FoodVarientsSL({
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
        3,
        4,
      ].map(
        (e) {
          return Container(
            margin: const EdgeInsets.only(right: 10, bottom: 10),
            constraints: const BoxConstraints(maxWidth: 80),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: AppColors.grayA7,
                borderRadius: BorderRadius.circular(AppSize.radiusSM)),
            child: Center(
              child: Text(
                "$e",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: AppColors.white),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
