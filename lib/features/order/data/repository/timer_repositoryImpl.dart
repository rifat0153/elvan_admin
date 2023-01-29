import 'package:elvan_admin/features/order/domain/models/order_timer_dto.dart';
import 'package:elvan_admin/features/order/domain/repository/timer_repository.dart';
import 'package:elvan_admin/shared/constants/app_utils.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final timerRepositoryProvider = Provider<TimerRepository>((ref) {
  return TimerRepositoryImpl();
});

class TimerRepositoryImpl implements TimerRepository {
  @override
  Future<OrderTimerDto?> getTimer({required String orderId}) async {
    var box =  Hive.box(AppUtils.timerBox);
    return box.get(orderId);
  }

  @override
  Future<void> removeTimer({required String orderId}) async {
    var box = Hive.box(AppUtils.timerBox);
    box.delete(orderId);
  }

  @override
  Future<void> setTimer(OrderTimerDto dto) async {
    var box =  Hive.box(AppUtils.timerBox);
    box.put(dto.orderId, dto);
  }
}
