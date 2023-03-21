import 'package:elvan_admin/features/order/ui/states/order_details_state.dart';
import 'package:elvan_admin/features/timer/domain/usecases/setting_usecase.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

  Future<void> selecteItem({
    required BuildContext context,
    required Order order,
  }) async {
    if (state.order != null) {
      if (state.order!.id == order.id) {
        state = state.copyWith(
          order: order,
          isOpenDetatils: !state.isOpenDetatils,
        );
      } else {
        state = state.copyWith(
          order: order,
          isOpenDetatils: true,
        );
      }
    } else {
      state = state.copyWith(
        isOpenDetatils: !state.isOpenDetatils,
        order: order,
      );
    }

    state = state.copyWith(
      xOffset: state.isOpenDetatils ? 288 : 0,
    );
  }

 

  void close() {
    state = state.copyWith(isOpenDetatils: false);
  }

  setDefaultTimer(Order order) async {
    return await ref.read(settingUsecaseProvider).getDefaultTimer();
  }
}
