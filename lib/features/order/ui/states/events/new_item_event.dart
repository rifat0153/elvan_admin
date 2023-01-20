import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_item_event.freezed.dart';

@freezed
class NewItemEvent with _$NewItemEvent {
  const factory NewItemEvent.onAccept({required OrderDto data}) =
      _NewItemEvent_OnAccept;
  const factory NewItemEvent.onReject({required OrderDto data}) =
      _NewItemEvent_OnReject;
}
