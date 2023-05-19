import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    Timer? countdownTimer,
    @Default(false) isRunnig,
    @Default(Duration(minutes: 30)) Duration duration,
  }) = _TimerState;
}
