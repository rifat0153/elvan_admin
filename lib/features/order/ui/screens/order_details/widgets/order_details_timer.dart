import 'dart:async';
import 'package:elvan_admin/features/order/domain/usecase/order_timer_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/timer/domain/usecases/timer_usecase.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
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
  void initState() {
    getTimeByOrder();
    super.initState();
  }

  getTimeByOrder() async {
    ref.read(timerProvider.notifier).stopTimer();
    OrderDto? order = ref.read(orderDtatilsProvider).order;
    Duration duration = const Duration(seconds: 0);
    int second = await ref.read(orderTimerUsecaseProvider).getSecondTime(
        orderId: order!.id);
    print("Secend order deatils---$second");
    duration = Duration(
      seconds: second,
    );
    setMin(orderId: order.id, min: duration.inMinutes);
    if (second == 0) {
      if (order.status.status == OrderStatus.pending.status) {
        setDefaultTimer(order);
      }
    }
    if (order.status.status == OrderStatus.accepted.status) {
      ref.watch(timerProvider.notifier).start();
    }
  }

  setDefaultTimer(OrderDto order) async {
    final defautTime = await ref.read(timerUsecaseProvider).getDefaultTimer();
    defautTime.when(
      success: (data) {
        print("----------default min ${data.defaultTime}");

        Duration duration = Duration(minutes: data.defaultTime);
        setMin(orderId: order.id, min: data.defaultTime);
      },
      failure: (failure) {
        print("----------default min ${failure.message}");
      },
    );
  }

  void setMin({
    required String orderId,
    required int min,
  }) {
    print("--------$orderId--set min $min");
    final time = DateTime.now().add(Duration(
      minutes: min,
    ));
    ref.read(orderTimerUsecaseProvider).setTime(orderId: orderId, time: time);
    ref.read(timerProvider.notifier).setTimer(min * 60);
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderDtatilsProvider);
    final timerState = ref.watch(timerProvider);

    useEffect(() {
      print("-----------order details-----${state.order?.id}");
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
