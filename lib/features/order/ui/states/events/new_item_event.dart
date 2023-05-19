import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_item_event.freezed.dart';

@freezed
class NewItemEvent with _$NewItemEvent {
  const factory NewItemEvent.onAccept({required int second, required Order data}) = _NewItemEvent_OnAccept;
  const factory NewItemEvent.onReject({required Order data}) = _NewItemEvent_OnReject;
  const factory NewItemEvent.onDrawer({
    required BuildContext context,
  }) = _NewItemEvent_OnDrawer;

  const factory NewItemEvent.selecteItem({
    required BuildContext context,
    required Order order,
  }) = _NewItemEvent_SelecteItem;
  const factory NewItemEvent.refresh() = _NewItemEvent_Refresh;
}
