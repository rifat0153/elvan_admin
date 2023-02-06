import 'package:elvan_admin/features/order/domain/usecase/order_timer_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/timer/domain/usecases/timer_usecase.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderDeatilsProcessTimer extends StatefulHookConsumerWidget {
  const OrderDeatilsProcessTimer({Key? key}) : super(key: key);

  @override
  _OrderDetailsTimerProcessState createState() => _OrderDetailsTimerProcessState();
}

class _OrderDetailsTimerProcessState extends ConsumerState<OrderDeatilsProcessTimer> {
  @override
  void initState() {
    getTimeByOrder();
    super.initState();
  }

  getTimeByOrder() async {
    ref.read(timerProvider.notifier).stopTimer();
    Order? order = ref.read(orderDtatilsProvider).order;
    Duration duration = const Duration(seconds: 0);
    ref
        .read(orderTimerUsecaseProvider)
        .getSecondTime(orderId: order!.id)
        .then((second) {
      print("Secend order deatils---$second");
      duration = Duration(
        seconds: second,
      );
      print("order details process minutes ${duration.inMinutes}");
      setMin(orderId: order.id, secend: second);

      if (order.status.status == OrderStatus.accepted.status) {
        ref.watch(timerProvider.notifier).start();
      }
    });
  }

  setDefaultTimer(OrderDto order) async {
    final defautTime = await ref.read(timerUsecaseProvider).getDefaultTimer();
    defautTime.when(
      success: (data) {
        print("----------default min ${data.defaultTime}");

        Duration duration = Duration(minutes: data.defaultTime ?? 0);
        setMin(orderId: order.id, secend: duration.inSeconds);
      },
      failure: (failure) {
        print("----------default min ${failure.message}");
      },
    );
  }

  void setMin({
    required String orderId,
    required int secend,
  }) {
    print("----orderDtatils----$orderId--set min $secend");
    final time = DateTime.now().add(Duration(
      seconds: secend,
    ));
    ref.read(orderTimerUsecaseProvider).setTime(orderId: orderId, time: time,second:secend);
    ref.read(timerProvider.notifier).setTimer(secend);
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
