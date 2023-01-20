import 'package:elvan_admin/features/order/ui/states/order_details_state.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderDtatilsProvider =
    StateNotifierProvider<OrderDetatilsNotifier, OrderDetatilsState>(
        (ref) => OrderDetatilsNotifier());

class OrderDetatilsNotifier extends StateNotifier<OrderDetatilsState> {
  OrderDetatilsNotifier() : super(const OrderDetatilsState());

  setOrder() {
    state = state.copyWith(isOpenDetatils: !state.isOpenDetatils);
  }

  void selecteItem({required BuildContext context, required OrderDto order}) {
    if (state.order != null) {
      if (state.order == order) {
        state =
            state.copyWith(order: order, isOpenDetatils: !state.isOpenDetatils);
      } else {
        state = state.copyWith(order: order, isOpenDetatils: true);
      }
    } else {
      state =
          state.copyWith(order: order, isOpenDetatils: !state.isOpenDetatils);
    }
    state = state.copyWith(xOffset: state.isOpenDetatils ? 288 : 0);
  }

  void setMin(int min) {
    state = state.copyWith(minutes: min);
  }

  void close() {
    state = state.copyWith(isOpenDetatils: false);
  }
}
