import 'dart:async';

import 'package:elvan_admin/features/order/ui/states/timer_state.dart';

class TimerProvider {
  TimerState state;

  TimerProvider({required this.state});

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
    } else {
      state = state.copyWith(duration: Duration(seconds: seconds));
    }
  }

  void stopTimer() {
    state.countdownTimer!.cancel();
  }

  void setTimer(int minutes) {
    state = state.copyWith(duration: Duration(minutes: minutes));
  }

  void resetTimer({int minutes = 30}) {
    stopTimer();
    setTimer(minutes);
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');
}
