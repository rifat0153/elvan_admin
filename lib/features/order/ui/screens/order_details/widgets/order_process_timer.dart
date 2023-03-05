import 'package:elvan_admin/core/logger/colored_print_log.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';

class OrderDeatilsProcessTimer extends StatefulHookConsumerWidget {
  const OrderDeatilsProcessTimer({Key? key}) : super(key: key);

  @override
  OrderDetailsTimerProcessState createState() => OrderDetailsTimerProcessState();
}

class OrderDetailsTimerProcessState extends ConsumerState<OrderDeatilsProcessTimer> {
  String strDigits(int n) => n.toString().padLeft(2, '0');

  final timeToSubtract = DateTime.now().subtract(const Duration(minutes: 5));

  @override
  Widget build(BuildContext context) {
    final currentOrderDetails = ref.watch(orderDtatilsProvider);
    final currentOrder = currentOrderDetails.order!;

    final _ = ref.watch(
      timerProvider(currentOrder),
    );
    final timerNotifier = ref.watch(
      timerProvider(currentOrder).notifier,
    );

    final duration = timerNotifier.getDuration();

    logError("duration: $duration");

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
              timeItem(
                context: context,
                title: AppStrings.hour,
                value: strDigits(duration.inHours.remainder(24)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  ":",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: AppColors.primaryRed,
                      ),
                ),
              ),
              timeItem(
                context: context,
                title: AppStrings.min,
                value: strDigits(duration.inMinutes.remainder(60)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  ":",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: AppColors.primaryRed,
                      ),
                ),
              ),
              timeItem(
                context: context,
                title: AppStrings.sec,
                value: strDigits(duration.inSeconds.remainder(60)),
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
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.gray),
          ),
        ),
      ],
    );
  }
}
