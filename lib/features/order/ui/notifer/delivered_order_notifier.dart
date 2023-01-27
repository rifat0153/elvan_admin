import 'dart:async';

import 'package:elvan_admin/features/order/domain/usecase/delivered_order_usecase.dart';
import 'package:elvan_admin/features/order/ui/states/delivered_state.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deliverdOrderProvider =
    NotifierProvider<DeliveredOrderNotifier, DeliveredState>(
        DeliveredOrderNotifier.new);

class DeliveredOrderNotifier extends Notifier<DeliveredState> {
  DeliveredOrderNotifier() : super();

  late DeliveredOrderUsecase deliveredOrderUsecase;
  late final StreamSubscription<List<OrderDto>> orderSubscription;

  @override
  DeliveredState build() {
    getData();
    ref.onDispose(() {
      orderSubscription.cancel();
    });

    return const DeliveredState(orders: [], loading: true);
  }

  getData() async {
    deliveredOrderUsecase = ref.read(deliveredOrderUsecaseProvider);

    final result = await deliveredOrderUsecase.getDeliveredStream();
    result.when(
      success: (data) {
       state = state.copyWith(loading: false, orders: data.docs);
      },
      failure: (failure) {
        state = state.copyWith(loading: false);
      },
    );
  }

  nextData()  async{
    state = state.copyWith(haseMore: true, orders: state.orders);
    final lastOrder = state.orders[state.orders.length - 1];
    final result = await deliveredOrderUsecase.getDeliveredStreamPaginagition(
        lastOrder: lastOrder);
    result.when(
      success: (data) {
         state = state.copyWith(
        loading: false,
        haseMore: false,
        orders: [...state.orders, ...data.docs]);
      },
      failure: (failure) {
        state = state.copyWith(haseMore: false, orders: state.orders);
      },
    );
  }

  
}
