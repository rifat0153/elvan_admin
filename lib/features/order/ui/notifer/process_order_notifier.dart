import 'dart:async';

import 'package:elvan_admin/features/order/domain/usecase/new_order_usecase.dart';
import 'package:elvan_admin/features/order/domain/usecase/process_order_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/order/ui/states/order_new_state.dart';
import 'package:elvan_shared/core/ui_state/ui_state.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final processOrderProvider =
    NotifierProvider<ProcessOrderNotifier, UiState<List<OrderDto>>>(
        ProcessOrderNotifier.new);

class ProcessOrderNotifier extends Notifier<UiState<List<OrderDto>>> {
  ProcessOrderNotifier() : super();

  late ProcessOrderUsecase processOrderUsecase;
  late final StreamSubscription<List<OrderDto>> orderSubscription;

  @override
  UiState<List<OrderDto>> build() {
    processOrderUsecase = ref.read(processOrderUsecaseProvider);

    final result = processOrderUsecase.getProcessStream();
    result.when(
      success: (data) {
        orderSubscription = data.listen(handleOrderStream);
      },
      failure: (failure) {
        state = UiState.error(failure.message);
      },
    );

    ref.onDispose(() {
      orderSubscription.cancel();
    });

    return const UiState.loading();
  }

  handleOrderStream(List<OrderDto> orderDto) {
    state = UiState.data(orderDto);
  }
}
