import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_item_event.freezed.dart';
@freezed
class NewItemEvent with _$NewItemEvent{
  const factory NewItemEvent.onAccept({dynamic data}) = _NewItemEvent_OnAccept;
  const factory NewItemEvent.onReject(dynamic data) = _NewItemEvent_OnReject;
  const factory NewItemEvent.onMinIncrement({required int min}) = _NewItemEvent_OnMinIncrement;
  const factory NewItemEvent.onMinDecrement({required int min}) = _NewItemEvent_OnMinDecrement;
}