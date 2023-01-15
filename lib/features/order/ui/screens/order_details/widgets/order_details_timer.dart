import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
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

    useEffect(() {
      // if (state.isAccpet) {
      //   minutes.value = state.minutes;
      //   today.value = DateTime.now().add(
      //     Duration(
      //       minutes: minutes.value,
      //     ),
      //   );
      // } else {
      //   minutes.value = 0;
      //    today.value = DateTime.now().add(
      //     Duration(
      //       minutes: minutes.value,
      //     ),
      //   );
      // }
    }, const []);
    return Container(
      width: 242,
      height: 112,
      decoration: BoxDecoration(
          color: AppColors.grayF7,
          borderRadius: BorderRadius.circular(AppSize.radiusSL)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              AppStrings.remaning,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          TimerCountdown(
            timeTextStyle: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: AppColors.primaryRed),
            format: CountDownTimerFormat.hoursMinutesSeconds,
            endTime: DateTime.now().add(
          Duration(
            minutes: state.isAccpet ? state.minutes : 0
          ),
        ),
            onEnd: () {
              print("Timer finished");
            },
          ),
        ],
      ),
    );
  }
}
