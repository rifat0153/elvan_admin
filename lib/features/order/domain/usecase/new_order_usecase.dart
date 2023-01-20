import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_admin/features/order/data/repository/order_repositoryImpl.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/domain_models/elvan_user/elvan_user.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_order_usecase.g.dart';

@riverpod
NewOrderUsecase newOrderUsecase(NewOrderUsecaseRef ref) {
  return NewOrderUsecase(
      orderRepository: ref.read(orderRepositoryProvider),
      authRepository: ref.read(authRepositoryProvider));
}

class NewOrderUsecase {
  final OrderRepository orderRepository;
  final AuthRepository authRepository;
  const NewOrderUsecase(
      {required this.orderRepository, required this.authRepository});

  Result<Stream<List<OrderDto>>> getNewStream() {
    final resultOrderdro = orderRepository.getNewStream();
    return resultOrderdro.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (failure) {
        return Result.failure(failure);
      },
    );
  }


 
}
