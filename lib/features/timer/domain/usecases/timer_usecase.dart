import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/features/timer/data/dto/timer_dto.dart';
import 'package:elvan_admin/features/timer/data/repository/timer_repository_impl.dart';
import 'package:elvan_admin/features/timer/domain/repository/timer_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timer_usecase.g.dart';

@riverpod
TimerUsecase timerUsecase(TimerUsecaseRef ref) {
  final repository = ref.read(timerRepsitoryProvider);
  return TimerUsecase(timerRepository: repository);
}

class TimerUsecase {
  final TimerRepository timerRepository;
  const TimerUsecase({required this.timerRepository});

  Future<TimerDto?> getDefaultTimer() async {
    return timerRepository.getDefaultTimer();
  }

  Future<Result<bool>> setDefaultTimer(TimerDto timerDto) async {
    return timerRepository.setDefaultTimer(timerDto);
  }
}
