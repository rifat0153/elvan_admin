import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_state.freezed.dart';

const int _openPanelOffset = 288;

@freezed
class OrderDetatilsState with _$OrderDetatilsState {
  const OrderDetatilsState._();

  const factory OrderDetatilsState({
    @Default(false) bool isDetailsPanelOpen,
    @Default(0) int xOffset,
    Order? order,
  }) = _OrderDetatilsState;

  OrderDetatilsState updateXOffset() {
    return copyWith(
      xOffset: isDetailsPanelOpen ? _openPanelOffset : 0,
    );
  }

  OrderDetatilsState closePanel() {
    return copyWith(
      isDetailsPanelOpen: false,
    );
  }

  OrderDetatilsState openPanel() {
    return copyWith(
      isDetailsPanelOpen: true,
    );
  }

  OrderDetatilsState togglePanel() {
    return copyWith(
      isDetailsPanelOpen: !isDetailsPanelOpen,
    );
  }

  OrderDetatilsState setOrder(Order order) {
    return copyWith(
      order: order,
    );
  }
}
