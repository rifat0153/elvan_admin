import 'package:elvan_admin/core/ui_state/ui_state.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_new_state.freezed.dart';

@freezed
class NewItemState with _$NewItemState {
  const factory NewItemState({
    @Default(false) bool isOpenDetatils,
    @Default(0) double xOffset,
    @Default(0) int minutes,
    @Default(false) bool isAccpet,
    @Default([]) List<OrderDto> data,
  }) = _NewItemState;
}
