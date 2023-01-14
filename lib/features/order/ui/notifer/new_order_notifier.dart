import 'package:elvan_admin/features/home/ui/states/menu_state.dart';
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
}
