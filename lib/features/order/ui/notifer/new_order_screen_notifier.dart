import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newOrderScreenProvider =
    NotifierProvider<NewOrderScreenNotifier, void>(NewOrderScreenNotifier.new);

class NewOrderScreenNotifier extends Notifier<void> {
  @override
  void build() {
    return;
  }

  onEvent(NewItemEvent event) {
    event.when(
        onDrawer: _onDrawer,
        selecteItem: _selecteItem,
        onAccept: _onAccept,
        onReject: _onReject,
        refresh: _onRefresh);
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

  _onReject(
    Order order,
  ) {
    ref.read(newOrderRejectProvider(order));
    ref.read(orderDtatilsProvider.notifier).close();
  }

  _onRefresh() {
    ref.invalidate(processStreamProvider);
  }

  _onAccept(int second, Order order) {
    ref.read(newOrderAcceptProvider(order, second));
    ref.read(orderDtatilsProvider.notifier).close();
  }
}
