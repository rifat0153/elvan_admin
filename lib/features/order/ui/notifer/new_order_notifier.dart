import 'dart:async';

import 'package:elvan_admin/features/order/domain/usecase/new_order_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/order/ui/states/order_new_state.dart';
import 'package:elvan_shared/core/ui_state/ui_state.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newOrderProvider =
    NotifierProvider<NewOrderNotifier, UiState<List<OrderDto>>>(
        NewOrderNotifier.new);

class NewOrderNotifier extends Notifier<UiState<List<OrderDto>>> {
  NewOrderNotifier() : super();

  late NewOrderUsecase newOrderUsecase;
  late final StreamSubscription<List<OrderDto>> orderSubscription;

  @override
  UiState<List<OrderDto>> build() {
    getData();

    ref.onDispose(() {
      orderSubscription.cancel();
    });

    return const UiState.loading();
  }

  getData() {
    newOrderUsecase = ref.read(newOrderUsecaseProvider);

    final result = newOrderUsecase.getNewStream();
    result.when(
      success: (data) {
        print(data.toString());
        orderSubscription = data.listen(handleOrderStream);
      },
      failure: (failure) {
        state = UiState.error(failure.message);
      },
    );
  }

  handleOrderStream(List<OrderDto> orderDto) {
    print(orderDto.length);
    state = UiState.data(orderDto);
  }

  void onEvent(NewItemEvent event) {
    event.when(onAccept: _onAccept, onReject: _onReject);
  }

  void _onAccept(OrderDto order) {
    print("-------a----click");
  }

  void _onReject(OrderDto order) {}
}
