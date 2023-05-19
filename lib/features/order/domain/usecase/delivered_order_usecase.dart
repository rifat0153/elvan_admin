import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_admin/features/order/data/repository/order_repository_impl.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delivered_order_usecase.g.dart';

@riverpod
DeliveredOrderUsecase deliveredOrderUsecase(DeliveredOrderUsecaseRef ref) {
  return DeliveredOrderUsecase(orderRepository: ref.read(orderRepositoryProvider), authRepository: ref.read(authRepositoryProvider));
}

class DeliveredOrderUsecase {
  final OrderRepository orderRepository;
  final AuthRepository authRepository;

  const DeliveredOrderUsecase({
    required this.orderRepository,
    required this.authRepository,
  });

  Future<QuerySnapshot<Map<String, dynamic>>> getDeliveredStream() async {
    final resultOrderdro = await orderRepository.getDeilveredStream();
    return resultOrderdro;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getDeliveredStreamPaginagition({required DocumentSnapshot lastOrder}) async {
    final resultOrderdro = await orderRepository.getDeilveredStreamPagination(lastOrder: lastOrder);
    return resultOrderdro;
  }
}
