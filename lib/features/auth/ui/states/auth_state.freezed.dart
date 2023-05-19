// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get loading => throw _privateConstructorUsedError;
  ElvanUser? get elvanUser => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) = _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool loading, ElvanUser? elvanUser, String? error});

  $ElvanUserCopyWith<$Res>? get elvanUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? elvanUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      elvanUser: freezed == elvanUser
          ? _value.elvanUser
          : elvanUser // ignore: cast_nullable_to_non_nullable
              as ElvanUser?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ElvanUserCopyWith<$Res>? get elvanUser {
    if (_value.elvanUser == null) {
      return null;
    }

    return $ElvanUserCopyWith<$Res>(_value.elvanUser!, (value) {
      return _then(_value.copyWith(elvanUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(_$_AuthState value, $Res Function(_$_AuthState) then) = __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, ElvanUser? elvanUser, String? error});

  @override
  $ElvanUserCopyWith<$Res>? get elvanUser;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$_AuthState> implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(_$_AuthState _value, $Res Function(_$_AuthState) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? elvanUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AuthState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      elvanUser: freezed == elvanUser
          ? _value.elvanUser
          : elvanUser // ignore: cast_nullable_to_non_nullable
              as ElvanUser?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({this.loading = false, this.elvanUser, this.error});

  @override
  @JsonKey()
  final bool loading;
  @override
  final ElvanUser? elvanUser;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState(loading: $loading, elvanUser: $elvanUser, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.elvanUser, elvanUser) || other.elvanUser == elvanUser) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, elvanUser, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith => __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({final bool loading, final ElvanUser? elvanUser, final String? error}) = _$_AuthState;

  @override
  bool get loading;
  @override
  ElvanUser? get elvanUser;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith => throw _privateConstructorUsedError;
}
