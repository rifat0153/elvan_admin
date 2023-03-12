import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/features/timer/data/dto/timer_dto.dart';

abstract class TimerRepository {
  Future<Result<bool>> setDefaultTimer(TimerDto timerDto);
 Future<TimerDto?> getDefaultTimer();

}
