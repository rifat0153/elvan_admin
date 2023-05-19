import 'package:elvan_admin/features/order/domain/usecase/delivered_order_usecase.dart';
import 'package:elvan_admin/features/order/ui/states/delivered_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deliverdOrderProvider = NotifierProvider<DeliveredOrderNotifier, DeliveredState>(DeliveredOrderNotifier.new);

class DeliveredOrderNotifier extends Notifier<DeliveredState> {
  DeliveredOrderNotifier() : super();

  late DeliveredOrderUsecase deliveredOrderUsecase;

  @override
  DeliveredState build() {
    getData();

    return const DeliveredState(orders: [], loading: true);
  }

  getData() async {
    deliveredOrderUsecase = ref.read(deliveredOrderUsecaseProvider);

    final data = await deliveredOrderUsecase.getDeliveredStream();
    state = state.copyWith(loading: false, orders: data.docs);
  }

  nextData() async {
    state = state.copyWith(haseMore: true, orders: state.orders);
    final lastOrder = state.orders[state.orders.length - 1];
    final data = await deliveredOrderUsecase.getDeliveredStreamPaginagition(lastOrder: lastOrder);
    state = state.copyWith(loading: false, haseMore: false, orders: [...state.orders, ...data.docs]);
  }
}
