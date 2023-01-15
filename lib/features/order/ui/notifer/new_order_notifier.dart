import 'package:elvan_admin/features/home/ui/states/menu_state.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/order/ui/states/order_new_state.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newOrderProvider =
    StateNotifierProvider<NewOrderNotifier, NewItemState>((ref) {
  return NewOrderNotifier();
});

class NewOrderNotifier extends StateNotifier<NewItemState> {
  NewOrderNotifier() : super(const NewItemState());

  void selecteItem({required BuildContext context, required int index}) {
    if (state.selectedindex != null) {
      if (state.selectedindex == index) {
        state = state.copyWith(
            selectedindex: index, isOpenDetatils: !state.isOpenDetatils);
      } else {
        state = state.copyWith(selectedindex: index, isOpenDetatils: true);
      }
    } else {
      state = state.copyWith(
          selectedindex: index, isOpenDetatils: !state.isOpenDetatils);
    }
    state = state.copyWith(xOffset: state.isOpenDetatils ? 288 : 0);
  }

  void close() {
    state = state.copyWith(isOpenDetatils: false);
  }

  void onEvent(NewItemEvent event) {
    event.when(onAccept: _onAccept, onReject: _onReject, onMinutes: _setMin);
  }

  void _setMin(int min) {
    state = state.copyWith(minutes: min);
  }

  void _onAccept(dynamic d) {
    print("-------a----click");

    state = state.copyWith(isAccpet: true);
    state = state.copyWith(minutes: state.minutes);
  }

  void _onReject(dynamic d) {
    print("-----r------click");
    state = state.copyWith(isAccpet: false, minutes: 0);
  }
}
