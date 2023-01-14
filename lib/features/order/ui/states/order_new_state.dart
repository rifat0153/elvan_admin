import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_new_state.freezed.dart';

@freezed
class NewItemState with _$NewItemState {
  const factory NewItemState({
    @Default(false) bool isOpenDetatils,
    @Default(0) double xOffset,
    @Default(30) int minutes,
    int? selectedindex,
  }) = _NewItemState;
}
