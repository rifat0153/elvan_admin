import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_admin/features/order/data/repository/order_repositoryImpl.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/domain_models/order/order.dart' as shared;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final orderUsecaseProvider = Provider.autoDispose<OrderUsecase>(
  (ref) => OrderUsecase(
    orderRepository: ref.watch(orderRepositoryProvider),
    authRepository: ref.watch(authRepositoryProvider),
  ),
);

class OrderUsecase {
  final OrderRepository orderRepository;
  final AuthRepository authRepository;
  const OrderUsecase(
      {required this.orderRepository, required this.authRepository});

  Stream<List<shared.Order>> getNewStream({required OrderStatus status}) {
    final timestamp = Timestamp.fromMillisecondsSinceEpoch(
        DateTime.now().millisecondsSinceEpoch);

    return orderRepository
        .getOrderStream(status: status, timestamp: timestamp)
        .map(
          (event) => event
              .map(
                (dto) => shared.Order.fromDto(dto),
              )
              .toList(),
        );
  }

  Future<void> orderAccept(
      {required String orderId, required OrderStatus status}) async {
    await orderRepository.changeOrderStatus(orderId: orderId, status: status);
  }

  Future<void> onStautsChange(
      {required String orderId, required OrderStatus status}) async {
    await orderRepository.changeOrderStatus(orderId: orderId, status: status);
  }
}
