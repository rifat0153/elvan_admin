import 'package:elvan_admin/core/shared_preferances/local_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_timer_usecase.g.dart';

@riverpod
OrderTimerUsecase orderTimerUsecase(OrderTimerUsecaseRef ref) {
  return OrderTimerUsecase();
}

class OrderTimerUsecase {
  setTime({required String orderId, required DateTime time}) {
    LocalData.getInstatance().storeOrderByMin(orderId: orderId, time: time);
  }

  Future<int> getSecondTime(
      {required String orderId, bool isAccept = false}) async {

        
    if (!isAccept) {
      return 0;
    }

    String storeDateByString =
        await LocalData.getInstatance().getOrderByMin(orderId: orderId);
    DateTime storeDate = DateTime.parse(storeDateByString);
    DateTime today = DateTime.now();

    int second = _daysBetween(storeDate, today);
    if (second == 0 || second.isNegative) {
      return 0;
    }
    return second;
  }

  int _daysBetween(DateTime date1, DateTime date2) {
    return date1.difference(date2).inSeconds;
  }
}
