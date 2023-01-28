import 'dart:async';

import 'package:elvan_admin/features/order/domain/usecase/order_timer_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderDeatilsTimer extends HookConsumerWidget {
  const OrderDeatilsTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final today = useState<DateTime>(DateTime.now());
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final countdownTimer =
        useState<Timer>(Timer(const Duration(seconds: 0), (() {})));
    final duration = useState<Duration>(Duration(seconds: 0));
    final state = ref.watch(orderDtatilsProvider);
    final notifier = ref.watch(orderDtatilsProvider.notifier);
    final days = strDigits(duration.value.inDays);
    final orderTimerNotifier = ref.watch(orderTimerUsecaseProvider);
    final timerState = ref.watch(timerProvider);
    final hours = useState<String>("00");
    final min = useState<String>("00");
    final seconds = useState<String>("00");

    useEffect(() {
      print("order item id ${state.order?.id}");
      if (state.time != null) {
       // today.value = state.time!;
        // hours.value = strDigits(timerState.duration.inHours.remainder(24));
        // min.value = strDigits(timerState.duration.inMinutes.remainder(60));
        // seconds.value = strDigits(timerState.duration.inSeconds.remainder(60));
      }
    }, const []);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.grayF7,
          borderRadius: BorderRadius.circular(AppSize.radiusSL)),
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
                  value: strDigits(timerState.duration.inHours.remainder(24))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  ":",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: AppColors.primaryRed),
                ),
              ),
              timeItem(
                  context: context,
                  title: AppStrings.min,
                  value:
                      strDigits(timerState.duration.inMinutes.remainder(60))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  ":",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: AppColors.primaryRed),
                ),
              ),
              timeItem(
                  context: context,
                  title: AppStrings.sec,
                  value:
                      strDigits(timerState.duration.inSeconds.remainder(60))),
            ],
          )
        ],
      ),
    );
  }

  Column timeItem(
      {required BuildContext context, required String title, required value}) {
    return Column(
      children: [
        Text('$value',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: AppColors.primaryRed)),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('$title',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: AppColors.gray)),
        ),
      ],
    );
  }
}
