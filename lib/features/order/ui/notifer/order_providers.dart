import 'package:elvan_admin/core/printer/header_printer.dart';
import 'package:elvan_admin/core/printer/web_printer.dart';
import 'package:elvan_admin/features/order/domain/usecase/order_usecase.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_providers.g.dart';

final newOrderStreamProvider = StreamProvider<List<Order>>((ref) {
  final orderUseCase = ref.read(orderUsecaseProvider);

  return orderUseCase.getOrderStream(status: OrderStatus.pending);
});

final processStreamProvider = StreamProvider<List<Order>>((ref) {
  final orderUseCase = ref.read(orderUsecaseProvider);

  return orderUseCase.getOrderStream(status: OrderStatus.accepted);
});

final readyStreamProvider = StreamProvider<List<Order>>((ref) {
  final orderUseCase = ref.read(orderUsecaseProvider);

  return orderUseCase.getOrderStream(status: OrderStatus.done);
});

@riverpod
void newOrderAccept(
  NewOrderAcceptRef ref,
  Order order,
  int second,
) async {
  final orderUsecase = ref.read(orderUsecaseProvider);

  await orderUsecase.orderAccept(
    orderId: order.id,
    status: OrderStatus.accepted,
    second: second,
  );

  final printer = ref.read(webPrinterNotifierProvider.notifier);

  await printer.printInvoice(
    headerPrinter: const HeaderPrinter(
        address: "701 Preston Ave,Pasadena,Texas",
        imageUrl: AppAssets.applogo,
        phone: "(713) 473-2503",
        title: "ELVAN",
        website: "elvan.com"),
    order: order,
  );
}

@riverpod
void newOrderReject(
  NewOrderRejectRef ref,
  Order order,
) async {
  final orderUsecase = ref.read(orderUsecaseProvider);
  await orderUsecase.orderAccept(
    orderId: order.id,
    status: OrderStatus.rejected,
  );
}

@riverpod
orderStatusUpdate(
  OrderStatusUpdateRef ref,
  Order order,
  OrderStatus status,
) async {
  final orderUseCase = ref.read(orderUsecaseProvider);

  await orderUseCase.onStautsChange(orderId: order.id, status: status);
}
