import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivered_state.freezed.dart';

@freezed
class DeliveredState with _$DeliveredState {
  const factory DeliveredState({
    @Default(false) bool loading,
    @Default(false) bool haseMore,
    @Default([]) List<DocumentSnapshot<Map<String, dynamic>>> orders,
    @Default(1) int page,
  }) = _DeliveredState;
}
