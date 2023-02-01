import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_admin/features/order/data/repository/order_repositoryImpl.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'process_order_usecase.g.dart';

@riverpod
ProcessOrderUsecase processOrderUsecase(ProcessOrderUsecaseRef ref) {
  return ProcessOrderUsecase(
      orderRepository: ref.read(orderRepositoryProvider),
      authRepository: ref.watch(authRepositoryProvider));
}

class ProcessOrderUsecase {
  final OrderRepository orderRepository;
  final AuthRepository authRepository;
  const ProcessOrderUsecase(
      {required this.orderRepository, required this.authRepository});

  Result<Stream<List<OrderDto>>> getProcessStream() {
    final resultOrderdro = orderRepository.getProccessStream();
    return resultOrderdro.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (failure) {
        return Result.failure(failure);
      },
    );
  }

  Future<Result<String>> onStautsChange(
      {required String orderId, required OrderStatus status}) {

    return orderRepository.changeOrderStatus(orderId: orderId, status: status);
  }

 
}
