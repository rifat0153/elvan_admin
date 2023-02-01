import 'package:elvan_admin/features/tabs/ui/states/menu_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final menuProvider = StateNotifierProvider<MenuNotifier, MenuState>((ref) {
  return MenuNotifier();
});

class MenuNotifier extends StateNotifier<MenuState> {
  MenuNotifier() : super(const MenuState());

  void open() {
    state = state.copyWith(
      isOpenMenu: !state.isOpenMenu,
    );
    state = state.copyWith(
      xOffset: state.isOpenMenu ? 79 : 0,
      xOffsetSubChild: state.isOpenMenu ? 0 : 0,
      xOffsetTab: state.isOpenMenu ? 79 : 0,
    );
  }

  bool menuOpen() => state.isOpenMenu;

  void close() {
    state = state.copyWith(isOpenMenu: false);
  }
}
