import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_event.freezed.dart';

@freezed
class UIEvent with _$UIEvent {
  const factory UIEvent.onDrawer({
    required BuildContext context,
  }) = _UIEvent_OnDrawer;

  const factory UIEvent.selecteItem({
    required BuildContext context,
    required Order order,
  }) = _UIEvent_SelecteItem;

  const factory UIEvent.onChangeStatus({
    required BuildContext context,
    required Order order,
  }) = _UIEvent_OnChangeStatus;

  const factory UIEvent.refresh() = _UIEvent_Refresh;
}
