import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class OrderDeatilsCountdown extends StatelessWidget {
  final int minutes;
  const OrderDeatilsCountdown({Key? key, required this.minutes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimerCountdown(
            timeTextStyle: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: AppColors.primaryRed),
            format: CountDownTimerFormat.hoursMinutesSeconds,
            endTime: DateTime.now().add(
          Duration(
            minutes: minutes 
          ),
        ),
            onEnd: () {
              print("Timer finished");
            },
          );
  }
}
