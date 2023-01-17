import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_state.freezed.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState({
    @Default(false) bool isOpenMenu,
    @Default(0) double xOffset,
    @Default(0) double xOffsetSubChild,
    @Default(0) double xOffsetTab,
    @Default(0) double yOffset,
  }) = _MenuState;
}
