import 'package:elvan_admin/features/home/ui/states/menu_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final menuProvider = StateNotifierProvider<MenuNotifier, MenuState>((ref) {
  return MenuNotifier();
});

class MenuNotifier extends StateNotifier<MenuState> {
  MenuNotifier() : super(const MenuState());

  void open() {
  state =  state.copyWith(
        isOpenMenu: !state.isOpenMenu, xOffset: state.isOpenMenu ? 384 : 0);
  }

  void close() {
   state = state.copyWith(isOpenMenu: false);
  }
}
