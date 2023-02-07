import 'dart:async';

import 'package:elvan_admin/features/order/ui/states/timer_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final minutesProvider = StateProvider<int>((ref) => 0);

final timerProvider = StateNotifierProvider<TimerNotifier, TimerState>((ref) {
  return TimerNotifier();
});

class TimerNotifier extends StateNotifier<TimerState> {
  TimerNotifier() : super(const TimerState());

  

  void start() {
    state = state.copyWith(
        countdownTimer: Timer.periodic(const Duration(seconds: 1), (timer) {
      setCountDown();
    }));
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    final seconds = state.duration.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      state.countdownTimer!.cancel();
      state = state.copyWith(isRunnig: false, duration: state.duration);
    } else {
      state =
          state.copyWith(duration: Duration(seconds: seconds), isRunnig: true);
    }
  }

  void stopTimer() {
    if (state.countdownTimer != null) {
      state.countdownTimer!.cancel();
    }
  }

  void setTimer(int minutes) {
    print("------------------set timer set $minutes");
    state = state.copyWith(duration: Duration(seconds: minutes));
  }

  void resetTimer({int minutes = 30}) {
    stopTimer();
    setTimer(minutes);
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');
}
