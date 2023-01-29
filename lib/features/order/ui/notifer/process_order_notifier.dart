import 'dart:async';
import 'package:elvan_admin/features/order/domain/usecase/process_order_usecase.dart';
import 'package:elvan_admin/shared/providers/scaffold_messenger/toast_provider.dart';
import 'package:elvan_shared/core/ui_state/ui_state.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
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
    getData();
    ref.onDispose(() {
      orderSubscription.cancel();
    });

    return const UiState.loading();
  }

  getData() {
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
  }

  handleOrderStream(List<OrderDto> orderDto) {
    state = UiState.data(orderDto);
  }

  onProcessing(BuildContext context, OrderDto order) async {
    processOrderUsecase = ref.read(processOrderUsecaseProvider);

    final result = await processOrderUsecase.onStautsChange(
        orderId: order.id, status: OrderStatus.done);
    result.when(
      success: (data) {
        ToastNotifer.success(context, data);
        getData();
      },
      failure: (failure) {
        ToastNotifer.error(context, "${failure.message}");
      },
    );
  }
}
