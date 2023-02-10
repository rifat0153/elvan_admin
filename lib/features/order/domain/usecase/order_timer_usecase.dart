import 'package:elvan_admin/features/order/data/repository/timer_repositoryImpl.dart';
import 'package:elvan_admin/features/order/domain/models/order_timer_dto.dart';
import 'package:elvan_admin/features/order/domain/repository/timer_repository.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_timer_usecase.g.dart';

@riverpod
OrderTimerUsecase orderTimerUsecase(OrderTimerUsecaseRef ref) {
  final TimerRepository repository = ref.watch(timerRepositoryProvider);

  return OrderTimerUsecase(repository: repository);
}

class OrderTimerUsecase {
  final TimerRepository repository;

  const OrderTimerUsecase({required this.repository});

  setTime(
      {required String orderId, required DateTime time, required int second}) {
    OrderTimerDto orderTimerDto = OrderTimerDto(
        orderId: orderId, time: time.toString(), second: second.toString());
    repository.setTimer(orderTimerDto);
  }

  Future<int> getSecondTime({required Order order}) async {
    // OrderTimerDto? storeDateByString =
    //     await repository.getTimer(orderId: orderId);
    // if (storeDateByString == null) {
    //   return 0;
    // }
    // DateTime storeDate = DateTime.parse(storeDateByString.time!);
    if (order.orderAcceptedAt == null) {
      return 0;
    }
    DateTime today = DateTime.now();

    int second = _daysBetween(order.orderAcceptedAt!.toDate(), today);
    if (second == 0 || second.isNegative) {
      return 0;
    }
    return second;
  }

  Future<int> findOrderTime({required String orderId}) async {
    OrderTimerDto? storeDateByString =
        await repository.getTimer(orderId: orderId);
    if (storeDateByString == null) {
      return 0;
    }
    return int.parse(storeDateByString.second!);
  }

  int _daysBetween(DateTime date1, DateTime date2) {
    return date1.difference(date2).inSeconds;
  }
}
