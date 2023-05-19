import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_admin/features/order/data/repository/order_repository_impl.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/domain_models/order/order.dart' as shared;
import 'package:riverpod_annotation/riverpod_annotation.dart';

final orderUsecaseProvider = Provider.autoDispose<OrderUsecase>(
  (ref) => OrderUsecase(
    orderRepository: ref.read(orderRepositoryProvider),
    authRepository: ref.read(authRepositoryProvider),
  ),
);

class OrderUsecase {
  final OrderRepository orderRepository;
  final AuthRepository authRepository;
  const OrderUsecase({required this.orderRepository, required this.authRepository});

  Stream<List<shared.Order>> getOrderStream({required OrderStatus status}) {
    return orderRepository.getOrderStream(status: status).map(
          (event) => event
              .map(
                (dto) => shared.Order.fromDto(dto),
              )
              .toList(),
        );
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getOrderSnapshotStream({required OrderStatus status}) {
    return orderRepository.getOrderSnapshotStream(status: status);
  }

  Future<void> orderAccept({
    required String orderId,
    required int second,
  }) async {
    await orderRepository.acceptOrder(
      orderId: orderId,
      second: second,
    );
  }

  Future<void> onStautsChange({
    required String orderId,
    required OrderStatus status,
  }) async {
    await orderRepository.changeOrderStatus(
      orderId: orderId,
      status: status,
    );
  }
}
