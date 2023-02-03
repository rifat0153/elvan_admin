import 'dart:async';


import 'package:elvan_admin/features/order/domain/usecase/ready_order_usececase.dart';
import 'package:elvan_admin/shared/providers/scaffold_messenger/toast_provider.dart';
import 'package:elvan_shared/core/ui_state/ui_state.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final readyOrderProvider =
    NotifierProvider<ReadyOrderNotifier, UiState<List<OrderDto>>>(
        ReadyOrderNotifier.new);

class ReadyOrderNotifier extends Notifier<UiState<List<OrderDto>>> {
  ReadyOrderNotifier() : super();

  late ReadyOrderUsecase readyOrderUsecase;
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
    readyOrderUsecase = ref.read(readyOrderUsecaseProvider);

    final result = readyOrderUsecase.getReadyStream();
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

  onReady(BuildContext context, OrderDto order) async {
    readyOrderUsecase = ref.read(readyOrderUsecaseProvider);

    final result = await readyOrderUsecase.onStautsChange(
        orderId: order.id, status: OrderStatus.delivered);
    result.when(
      success: (data) {
        ToastNotifer.success(context, data);
       
      },
      failure: (failure) {
        ToastNotifer.error(context, "${failure.message}");
      },
    );
     getData();
  }
}
