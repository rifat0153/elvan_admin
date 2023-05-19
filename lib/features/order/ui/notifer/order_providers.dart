import 'package:elvan_admin/core/printer/web_printer.dart';
import 'package:elvan_admin/features/auth/domain/usecase/auth_usecases.dart';
import 'package:elvan_admin/features/order/domain/usecase/order_usecase.dart';
import 'package:elvan_shared/domain_models/elvan_user/elvan_user.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
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
    second: second,
  );

  final printer = ref.read(webPrinterNotifierProvider.notifier);

  await printer.printKitchen(
    order: order,
  );
}

@riverpod
void newOrderReject(
  NewOrderRejectRef ref,
  Order order,
) async {
  final orderUsecase = ref.read(orderUsecaseProvider);
  await orderUsecase.onStautsChange(
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

  await orderUseCase.onStautsChange(
    orderId: order.id,
    status: status,
  );
}

final getCustomerProvider = FutureProvider.family<ElvanUser?, String>((
  ref,
  String userId,
) async {
  print("---------get cutomer----$userId ");
  final authUseCase = ref.read(authUseCaseProvider);
  final user = await authUseCase.getOrderedUser(
    userId: userId,
  );
  print("-----get customer method----$user");
  return user;
});
