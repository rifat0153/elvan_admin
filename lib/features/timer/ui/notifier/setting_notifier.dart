import 'dart:html';
import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/timer/data/dto/timer_dto.dart';
import 'package:elvan_admin/features/timer/domain/usecases/setting_usecase.dart';
import 'package:elvan_admin/features/timer/ui/states/timer_state.dart';
import 'package:elvan_shared/domain_models/settgins/setting.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final defaultTimerProvider =
    NotifierProvider<SettingNotifier, DefaultTimerState>(SettingNotifier.new);

class SettingNotifier extends Notifier<DefaultTimerState> {
  @override
  DefaultTimerState build() {
    getData();
    return const DefaultTimerState();
  }

  Future<void> getData() async {
    Setting? data = await ref.read(settingUsecaseProvider).getDefaultTimer();
    if (data == null) {
      return;
    }

    if (kDebugMode) {
      print(data.toJson().toString());
    }
    state = state.copyWith(
        minutes: data.defaultTime ?? 0,
        takingHour: data.takingOrder,
        notice: data.notice);
  }

  setTakingHour(bool isTaking) {
    state = state.copyWith(
        takingHour: isTaking, minutes: state.minutes, notice: state.notice);
    ref.read(settingUsecaseProvider).setDefaultTimer(Setting(
        defaultTime: state.minutes,
        notice: state.notice,
        takingOrder: state.takingHour));
  }

  setNotice(String notice) {
    state = state.copyWith(
        takingHour: state.takingHour, minutes: state.minutes, notice: notice);
    ref.read(settingUsecaseProvider).setDefaultTimer(Setting(
        defaultTime: state.minutes,
        notice: state.notice,
        takingOrder: state.takingHour));
  }

  setMin(int min) {
    state = state.copyWith(
        takingHour: state.takingHour, minutes: min, notice: state.notice);
    ref.read(settingUsecaseProvider).setDefaultTimer(Setting(
        defaultTime: state.minutes,
        notice: state.notice,
        takingOrder: state.takingHour));
  }
}
