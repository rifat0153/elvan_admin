import 'package:elvan_shared/domain_models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool loading,
    ElvanUser? elvanUser,
    String? error,
  }) = _AuthState;
}
