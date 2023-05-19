import 'dart:async';

import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// usage in UI - to get value ---> ref.read(timerNotifierProvider(order));
// usage in UI - notifier ---> ref.read(timerNotifierProvider(order).notifier);
final timerProvider = AutoDisposeNotifierProviderFamily<TimerNotifier, int, Order>(
  TimerNotifier.new,
);

class TimerNotifier extends AutoDisposeFamilyNotifier<int, Order> {
  @override
  int build(Order arg) {
    final orderAcceptedAtTimestamp = arg.orderAcceptedAt;
    final orderAcceptedAt = orderAcceptedAtTimestamp?.toDate();

    //final orderPreparationTimeInSeconds = arg.orderPreparationTime;
    // final orderShouldBePreparedBy = orderAcceptedAt!.add(Duration(seconds: orderPreparationTimeInSeconds!));
    final orderShouldBePreparedBy = orderAcceptedAt!;

    // if orderShouldBePreparedBy time is less than current time, set the timer to 0
    if (orderShouldBePreparedBy.isBefore(DateTime.now())) {
      return 0;
    }

    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = state - 1;
    });

    // cancel the timer when the duration reaches 0
    ref.listenSelf((previous, next) {
      if (next == 0) {
        timer.cancel();
      }
    });

    // cancel the timer when the notifier is disposed
    ref.onDispose(() {
      timer.cancel();
    });

    // set the initial count down value when the notifier is created
    return orderShouldBePreparedBy.difference(DateTime.now()).inSeconds;
  }

  Duration getDuration() {
    return Duration(seconds: state);
  }
}
