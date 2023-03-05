import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/features/order/ui/states/events/ui_event.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final processScreenProvider = NotifierProvider<ProcessScreenNotifier, void>(ProcessScreenNotifier.new);

class ProcessScreenNotifier extends Notifier<void> {
  @override
  void build() {
    return;
  }

  onEvent(UIEvent event) {
    event.when(onDrawer: _onDrawer, selecteItem: _selecteItem, onChangeStatus: _onChangeStatus, refresh: _onRefresh);
  }

  _onDrawer(BuildContext context) {
    final menuNotifier = ref.read(menuProvider.notifier);
    Scaffold.of(context).openDrawer();
    menuNotifier.open();
  }

  _selecteItem(
    BuildContext context,
    Order order,
  ) {
    final orderDetatilsNotifier = ref.read(orderDtatilsProvider.notifier);

    Scaffold.of(context).openEndDrawer();

    orderDetatilsNotifier.selecteItem(
      context: context,
      order: order,
    );
  }

  _onChangeStatus(
    BuildContext context,
    Order order,
  ) {
    ref.read(orderStatusUpdateProvider(order, OrderStatus.done));
    ref.read(orderDtatilsProvider.notifier).close();
  }

  _onRefresh() {
    ref.invalidate(processStreamProvider);
  }
}
