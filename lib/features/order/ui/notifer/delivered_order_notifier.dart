import 'dart:async';

import 'package:elvan_admin/features/order/domain/usecase/delivered_order_usecase.dart';
import 'package:elvan_admin/features/order/domain/usecase/new_order_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/order/ui/states/order_new_state.dart';
import 'package:elvan_shared/core/ui_state/ui_state.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deliverdOrderProvider =
    NotifierProvider<DeliveredOrderNotifier, UiState<List<OrderDto>>>(
        DeliveredOrderNotifier.new);

class DeliveredOrderNotifier extends Notifier<UiState<List<OrderDto>>> {
  DeliveredOrderNotifier() : super();

  late DeliveredOrderUsecase deliveredOrderUsecase;
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
    deliveredOrderUsecase = ref.read(deliveredOrderUsecaseProvider);

    final result = deliveredOrderUsecase.getDeliveredStream();
    result.when(
      success: (data) {
        orderSubscription = data.listen(handleOrderStream);
      },
      failure: (failure) {
        state = UiState.error(failure.message);
      },
    );
  }

  handleOrderStream(List<OrderDto> orderDto) {
    state = UiState.data(orderDto);
  }

}
