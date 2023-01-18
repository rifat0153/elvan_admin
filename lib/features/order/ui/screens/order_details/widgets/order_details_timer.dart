import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/order_details_conutdown.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class OrderDeatilsTimer extends HookConsumerWidget {
  const OrderDeatilsTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final today = useState<DateTime>(DateTime.now());
    final minutes = useState<int>(0);
    final state = ref.watch(newOrderProvider);
    final notifier = ref.watch(newOrderProvider.notifier);
    final timerState = ref.watch(timerProvider);
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(timerState.duration.inDays);
    // Step 7
    final hours = strDigits(timerState.duration.inHours.remainder(24));
    final min = strDigits(timerState.duration.inMinutes.remainder(60));
    final seconds = strDigits(timerState.duration.inSeconds.remainder(60));
    useEffect(() {
      if (state.isAccpet) {
        minutes.value = state.minutes;
        today.value = DateTime.now().add(
          Duration(
            minutes: minutes.value,
          ),
        );
      } else {
        minutes.value = 0;
        today.value = DateTime.now().add(
          Duration(
            minutes: minutes.value,
          ),
        );
      }
    }, const []);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
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
              timeItem(context: context, title: AppStrings.hour, value: hours),
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
              timeItem(context: context, title: AppStrings.min, value: min),
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
              timeItem(context: context, title: AppStrings.sec, value: seconds),
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
