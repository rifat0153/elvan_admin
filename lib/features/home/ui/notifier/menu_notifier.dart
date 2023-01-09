import 'package:hooks_riverpod/hooks_riverpod.dart';

final menuProvider = NotifierProvider<MenuNotifier, void>(() {
  return MenuNotifier();
});

class MenuNotifier extends Notifier<void> {
  bool _isOpenMenu = false;
  double _yOffset = 0;
  double _xOffset = 0;

  double get yOffset => _yOffset;
  double get xOffset => _xOffset;
  bool get isOpen => _isOpenMenu;

  @override
  void build() {
    // TODO: implement build
  }

  void open() {
    _isOpenMenu = !_isOpenMenu;
    _xOffset = _isOpenMenu ? 384 : 0;
  }

  void close() {
    _isOpenMenu = false;
  }
}
