import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_state.freezed.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState({
    @Default(false) bool loading,
    @Default(false) bool haseMore,
    @Default([]) List<DocumentSnapshot<Map<String, dynamic>>> items,
    @Default(1) int page,
  }) = _FoodState;
}
