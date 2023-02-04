import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_admin/features/order/data/repository/order_repositoryImpl.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/domain_models/elvan_user/elvan_user.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final newOrderUsecaseProvider = Provider.autoDispose<NewOrderUsecase>(
  (ref) => NewOrderUsecase(
    orderRepository: ref.watch(orderRepositoryProvider),
    authRepository: ref.watch(authRepositoryProvider),
  ),
);

class NewOrderUsecase {
  final OrderRepository orderRepository;
  final AuthRepository authRepository;
  const NewOrderUsecase({required this.orderRepository, required this.authRepository});

  Stream<List<Order>> getNewStream() {
    return orderRepository.getNewStream().map(
          (event) => event
              .map(
                (dto) => Order.fromDto(dto),
              )
              .toList(),
        );
  }

  Future<Result<String>> orderAccept({required String orderId, required OrderStatus status}) {
    return orderRepository.changeOrderStatus(orderId: orderId, status: status);
  }
}
