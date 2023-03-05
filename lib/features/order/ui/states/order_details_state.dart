import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_state.freezed.dart';

@freezed
class OrderDetatilsState with _$OrderDetatilsState {
  const factory OrderDetatilsState({
    @Default(false) bool isOpenDetatils,
    DateTime? time,
    @Default(0) int xOffset,
    Order? order,
  }) = _OrderDetatilsState;
}
