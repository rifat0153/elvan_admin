import 'package:elvan_admin/features/order/domain/models/order_timer_dto.dart';

abstract class TimerRepository {
  Future<void> setTimer(OrderTimerDto dto);
  Future<OrderTimerDto?> getTimer({required String orderId});
  Future<void> removeTimer({required String orderId});
}
