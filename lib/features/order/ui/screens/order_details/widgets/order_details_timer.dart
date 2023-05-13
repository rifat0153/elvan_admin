import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderDeatilsTimer extends StatefulHookConsumerWidget {
  const OrderDeatilsTimer({Key? key}) : super(key: key);

  @override
  _OrderDetailsTimerState createState() => _OrderDetailsTimerState();
}

class _OrderDetailsTimerState extends ConsumerState<OrderDeatilsTimer> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderDtatilsProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(color: AppColors.grayF7, borderRadius: BorderRadius.circular(AppSize.radiusSL)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 10),
            child: Text(
              AppStrings.remaning,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  ":",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColors.primaryRed),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  ":",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColors.primaryRed),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Column timeItem({required BuildContext context, required String title, required value}) {
    return Column(
      children: [
        Text('$value', style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColors.primaryRed)),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('$title', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.gray)),
        ),
      ],
    );
  }
}
