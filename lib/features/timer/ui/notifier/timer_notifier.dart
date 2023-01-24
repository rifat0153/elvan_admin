import 'dart:html';

import 'package:elvan_admin/core/logger/colored_print_log.dart';
import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/features/order/ui/states/timer_state.dart';
import 'package:elvan_admin/features/timer/data/dto/timer_dto.dart';
import 'package:elvan_admin/features/timer/domain/usecases/timer_usecase.dart';
import 'package:elvan_admin/features/timer/ui/states/timer_state.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final defaultTimerProvider =
    NotifierProvider<TimerNotifier, DefaultTimerState>(TimerNotifier.new);

class TimerNotifier extends Notifier<DefaultTimerState> {
  @override
  DefaultTimerState build() {
    getData();
    return const DefaultTimerState();
  }

  Future<void> getData() async {
    Result<TimerDto> timerDto =
        await ref.read(timerUsecaseProvider).getDefaultTimer();
    timerDto.when(
      success: (data) {
        if (kDebugMode) {
          print(data.toJson().toString());
        }
        state = state.copyWith(
            minutes: data.defaultTime,
            takingHour: data.takingOrder,
            notice: data.notice);
      },
      failure: (failure) {
        if (kDebugMode) {
          print(failure.message);
        }
        state = state.copyWith(error: failure.message);
      },
    );
    state = state;
  }

  setTakingHour(bool isTaking) {
    state = state.copyWith(
        takingHour: isTaking, minutes: state.minutes, notice: state.notice);
    ref.read(timerUsecaseProvider).setDefaultTimer(TimerDto(
        defaultTime: state.minutes,
        notice: state.notice,
        takingOrder: state.takingHour));
  }

  setNotice(String notice) {
    state = state.copyWith(
        takingHour: state.takingHour, minutes: state.minutes, notice: notice);
    ref.read(timerUsecaseProvider).setDefaultTimer(TimerDto(
        defaultTime: state.minutes,
        notice: state.notice,
        takingOrder: state.takingHour));
  }

  setMin(int min) {
    state = state.copyWith(
        takingHour: state.takingHour, minutes: min, notice: state.notice);
    ref.read(timerUsecaseProvider).setDefaultTimer(TimerDto(
        defaultTime: state.minutes,
        notice: state.notice,
        takingOrder: state.takingHour));
  }
}
