import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:elvan_admin/core/ui_state/ui_state.dart';
import 'package:elvan_admin/features/order/domain/usecase/order_usecase.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';

final newOrderScreenProvider = NotifierProvider<NewOrderScreenNotifier, UiState<List<Order>>>(NewOrderScreenNotifier.new);

class NewOrderScreenNotifier extends Notifier<UiState<List<Order>>> {
  @override
  UiState<List<Order>> build() {
    getList();
    return const UiState.loading();
  }

  getList() {
    final result = ref.read(orderUsecaseProvider).getOrderSnapshotStream(status: OrderStatus.pending);

    result.listen((event) {
      event.docChanges.forEach((item) async {
        if (item.type == firestore.DocumentChangeType.added) {
          print("-----------------${item.type}");
          await _createSound();
        }
      });
      final List<OrderDto> oreder = event.docs.map((e) => OrderDto.fromJson(e.data())).toList();

      state = UiState.data(oreder.map((e) => Order.fromDto(e)).toList());
    });
  }

  onEvent(NewItemEvent event) {
    event.when(onDrawer: _onDrawer, selecteItem: _selecteItem, onAccept: _onAccept, onReject: _onReject, refresh: _onRefresh);
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

  Future<void> _createSound() async {
    final player = AudioPlayer();
    if (player.playing) {
      return;
    }
    player.setAudioSource(AudioSource.uri(Uri.parse(AppAssets.notificationFBS)), initialPosition: Duration.zero, preload: true);

    // await player.setLoopMode(LoopMode.one);
    await player.play();
  }
}
