import 'package:elvan_admin/core/shared_preferances/local_data.dart';
import 'package:elvan_admin/features/order/data/repository/timer_repositoryImpl.dart';
import 'package:elvan_admin/features/order/domain/models/order_timer_dto.dart';
import 'package:elvan_admin/features/order/domain/repository/timer_repository.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/timer_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_timer_usecase.g.dart';

@riverpod
OrderTimerUsecase orderTimerUsecase(OrderTimerUsecaseRef ref) {
  final TimerRepository repository = ref.watch(timerRepositoryProvider);
  final timerState = ref.watch(timerProvider);

  return OrderTimerUsecase(repository: repository, timerState: timerState);
}

class OrderTimerUsecase {
  final TimerRepository repository;
  final TimerState timerState;
  const OrderTimerUsecase({required this.repository, required this.timerState});

  setTime({required String orderId, required DateTime time}) {
    OrderTimerDto orderTimerDto =
        OrderTimerDto(orderId: orderId, time: time.toString());
    repository.setTimer(orderTimerDto);
  }

  Future<int> getSecondTime(
      {required String orderId, bool isAccept = false}) async {
    if (!timerState.isRunnig) {
      return 0;
    }
    if (!isAccept) {
      return 0;
    }

    OrderTimerDto? storeDateByString =
        await repository.getTimer(orderId: orderId);
    if (storeDateByString == null) {
      return 0;
    }
    DateTime storeDate = DateTime.parse(storeDateByString.time!);
    DateTime today = DateTime.now();

    int second = _daysBetween(storeDate, today);
    if (second == 0 || second.isNegative) {
      return 0;
    }
    return second;
  }

  int _daysBetween(DateTime date1, DateTime date2) {
    return date1.difference(date2).inSeconds;
  }
}
