import 'dart:async';

import 'package:elvan_admin/app/app.dart';
import 'package:elvan_admin/core/printer/header_printer.dart';
import 'package:elvan_admin/core/printer/pos_printer.dart';
import 'package:elvan_admin/core/printer/web_printer.dart';
import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/features/order/domain/usecase/new_order_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/order/ui/states/order_new_state.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/providers/scaffold_messenger/toast_provider.dart';
import 'package:elvan_shared/core/ui_state/ui_state.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  void _onAccept(BuildContext context, OrderDto order) async {
    newOrderUsecase = ref.read(newOrderUsecaseProvider);

    final result = await newOrderUsecase.orderAccept(
        orderId: order.id, status: OrderStatus.accepted);
    result.when(
      success: (data) {
        ToastNotifer.success(context, data);
      },
      failure: (failure) {
        ToastNotifer.error(context, "${failure.message}");
      },
    );
    final printer = ref.read(webPrinterNotifierProvider.notifier);
    printer.printInvoice(
        headerPrinter: const HeaderPrinter(
            address: "701 Preston Ave,Pasadena,Texas",
            imageUrl: AppAssets.applogo,
            phone: "(713) 473-2503",
            title: "ELVAN",
            website: "elvan.com"),
        order: order);

    getData();
  }

  void _onReject(BuildContext context, OrderDto order) async {
    newOrderUsecase = ref.read(newOrderUsecaseProvider);

    final result = await newOrderUsecase.orderAccept(
        orderId: order.id, status: OrderStatus.rejected);
    result.when(
      success: (data) {
        ToastNotifer.common(
            context: context,
            message: data,
            title: OrderStatus.pending.status,
            iconData: Icons.delete_forever,
            color: Colors.purple);
      },
      failure: (failure) {
        ToastNotifer.error(context, "${failure.message}");
      },
    );
  }
}
