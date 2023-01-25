import 'package:elvan_admin/features/order/domain/usecase/order_timer_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/order_details_state.dart';
import 'package:elvan_admin/features/timer/domain/usecases/timer_usecase.dart';
import 'package:elvan_admin/features/timer/ui/notifier/timer_notifier.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderDtatilsProvider =
    StateNotifierProvider<OrderDetatilsNotifier, OrderDetatilsState>(
        (ref) => OrderDetatilsNotifier(ref: ref));

class OrderDetatilsNotifier extends StateNotifier<OrderDetatilsState> {
  final StateNotifierProviderRef<OrderDetatilsNotifier, OrderDetatilsState> ref;
  OrderDetatilsNotifier({required this.ref})
      : super(const OrderDetatilsState());

  setOrder() {
    state = state.copyWith(isOpenDetatils: !state.isOpenDetatils);
  }

  Future<void> selecteItem(
      {required BuildContext context, required OrderDto order}) async {
    int second = await ref.read(orderTimerUsecaseProvider).getSecondTime(
        orderId: order.id,
        isAccept: order.status.name == OrderStatus.pending.name);
    Duration duration = Duration(
      seconds: second,
    );
    if (second == 0) {
      final defautTime = await ref.read(timerUsecaseProvider).getDefaultTimer();
      defautTime.when(
        success: (data) {
          setMin(orderId: order.id, min: data.defaultTime);
        },
        failure: (failure) {},
      );
    }
    print(second);
    print(order.id);
    if (state.order != null) {
      if (state.order!.id == order.id) {
        state = state.copyWith(
            order: order,
            isOpenDetatils: !state.isOpenDetatils,
            time: DateTime.now().add(duration));
        ref.read(timerProvider.notifier).setTimer(duration.inMinutes);
      } else {
        state = state.copyWith(
            order: order,
            isOpenDetatils: true,
            time: DateTime.now().add(duration));
        ref.read(timerProvider.notifier).setTimer(duration.inMinutes);
      }
    } else {
      // defaul time set
      state = state.copyWith(
          order: order,
          isOpenDetatils: !state.isOpenDetatils,
          time: DateTime.now().add(Duration(
            seconds: second,
          )));
    }
    state = state.copyWith(xOffset: state.isOpenDetatils ? 288 : 0);
  }

  void setMin({
    required String orderId,
    required int min,
  }) {
    print("--------$orderId--set min $min");
    state = state.copyWith(
        time: DateTime.now().add(
      Duration(
        minutes: min,
      ),
    ));
    ref
        .read(orderTimerUsecaseProvider)
        .setTime(orderId: orderId, time: state.time!);
    ref.read(timerProvider.notifier).setTimer(min);
  }

  void close() {
    state = state.copyWith(isOpenDetatils: false);
  }
}
