import 'package:elvan_admin/features/order/domain/usecase/order_timer_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/order_details_state.dart';
import 'package:elvan_admin/features/timer/domain/usecases/timer_usecase.dart';
import 'package:elvan_admin/features/timer/ui/notifier/timer_notifier.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moment_dart/moment_dart.dart';

final orderDtatilsProvider =
    NotifierProvider<OrderDetatilsNotifier, OrderDetatilsState>(
        OrderDetatilsNotifier.new);

class OrderDetatilsNotifier extends Notifier<OrderDetatilsState> {
  @override
  OrderDetatilsState build() {
    return const OrderDetatilsState();
  }

  setOrder() {
    state = state.copyWith(isOpenDetatils: !state.isOpenDetatils);
  }

  Future<void> selecteItem(
      {required BuildContext context, required OrderDto order}) async {
    if (state.order != null) {
      if (state.order!.id == order.id) {
        state = state.copyWith(
          order: order,
          isOpenDetatils: !state.isOpenDetatils,
          time: state.time,
        );
        getTimeByOrder(order);
      } else {
        state = state.copyWith(
          order: order,
          isOpenDetatils: true,
        );
        if (order.status.status == OrderStatus.pending.status) {
          await setDefaultTimer(order);
        }
      }
    } else {
      // defaul time set
      state = state.copyWith(
        order: order,
        isOpenDetatils: !state.isOpenDetatils,
      );
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
    ref.watch(timerProvider.notifier).setTimer(min * 60);
  }

  void close() {
    state = state.copyWith(isOpenDetatils: false);
  }

  timerHandler(OrderDto order) async {
    Duration duration = const Duration(seconds: 0);
    int second = await ref.read(orderTimerUsecaseProvider).getSecondTime(
        orderId: order.id,
        isAccept: order.status.status == OrderStatus.accepted.status);
    print("Secend---$second");
    if (second == 0) {
    } else {
      duration = Duration(
        seconds: second,
      );
    }
  }

  getTimeByOrder(OrderDto order) async {
    Duration duration = const Duration(seconds: 0);
    int second = await ref.read(orderTimerUsecaseProvider).getSecondTime(
        orderId: order.id,
        isAccept: order.status.status == OrderStatus.accepted.status);
    print("Secend---$second");
    duration = Duration(
      seconds: second,
    );
    setMin(orderId: order.id, min: duration.inMinutes);
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
}
