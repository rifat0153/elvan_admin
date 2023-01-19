import 'package:elvan_admin/features/order/ui/states/order_details_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderDtatilsProvider =
    StateNotifierProvider<OrderDetatilsNotifier, OrderDetatilsState>((ref) => OrderDetatilsNotifier());

class OrderDetatilsNotifier extends StateNotifier<OrderDetatilsState> {
  OrderDetatilsNotifier() : super(const OrderDetatilsState());

  setOrder() {
    state = state.copyWith(isOpenDetatils: !state.isOpenDetatils);
  }
}
