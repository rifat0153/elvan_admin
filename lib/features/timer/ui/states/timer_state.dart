import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
class DefaultTimerState with _$DefaultTimerState {
  const factory DefaultTimerState({@Default(0) int minutes, @Default(false) takingHour, String? notice, String? error}) = _DefaultTimerState;
}
