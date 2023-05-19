import 'package:elvan_admin/features/order/ui/states/order_details_state.dart';
import 'package:elvan_admin/features/timer/domain/usecases/setting_usecase.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderDtatilsProvider = NotifierProvider<OrderDetatilsNotifier, OrderDetatilsState>(OrderDetatilsNotifier.new);

class OrderDetatilsNotifier extends Notifier<OrderDetatilsState> {
  @override
  OrderDetatilsState build() {
    return const OrderDetatilsState();
  }

  setOrder() {
    // state = state.copyWith(isDetailsPanelOpen: !state.isDetailsPanelOpen);
    state = state.togglePanel();
  }

  void selecteItem({
    required BuildContext context,
    required Order order,
  }) {
    OrderDetatilsState nextState = state;

    nextState = state.setOrder(order);

    if (state.order?.id == order.id) {
      nextState = state.togglePanel();
    } else {
      nextState = state.openPanel();
    }

    nextState = nextState.updateXOffset();

    state = nextState;
  }

  void close() {
    state = state.closePanel();
  }

  setDefaultTimer(Order order) async {
    return await ref.read(settingUsecaseProvider).getDefaultTimer();
  }
}
