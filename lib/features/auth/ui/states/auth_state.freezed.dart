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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unKnown,
    required TResult Function(ElvanUser elvanUser) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unKnown,
    TResult? Function(ElvanUser elvanUser)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unKnown,
    TResult Function(ElvanUser elvanUser)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthState_Loading value) loading,
    required TResult Function(_AuthState_UnKnown value) unKnown,
    required TResult Function(_AuthState_Authenticated value) authenticated,
    required TResult Function(_AuthState_UnAuthenticated value) unAuthenticated,
    required TResult Function(_AuthState_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthState_Loading value)? loading,
    TResult? Function(_AuthState_UnKnown value)? unKnown,
    TResult? Function(_AuthState_Authenticated value)? authenticated,
    TResult? Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_AuthState_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthState_Loading value)? loading,
    TResult Function(_AuthState_UnKnown value)? unKnown,
    TResult Function(_AuthState_Authenticated value)? authenticated,
    TResult Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult Function(_AuthState_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthState_LoadingCopyWith<$Res> {
  factory _$$_AuthState_LoadingCopyWith(_$_AuthState_Loading value,
          $Res Function(_$_AuthState_Loading) then) =
      __$$_AuthState_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthState_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState_Loading>
    implements _$$_AuthState_LoadingCopyWith<$Res> {
  __$$_AuthState_LoadingCopyWithImpl(
      _$_AuthState_Loading _value, $Res Function(_$_AuthState_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthState_Loading implements _AuthState_Loading {
  const _$_AuthState_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthState_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unKnown,
    required TResult Function(ElvanUser elvanUser) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unKnown,
    TResult? Function(ElvanUser elvanUser)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unKnown,
    TResult Function(ElvanUser elvanUser)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthState_Loading value) loading,
    required TResult Function(_AuthState_UnKnown value) unKnown,
    required TResult Function(_AuthState_Authenticated value) authenticated,
    required TResult Function(_AuthState_UnAuthenticated value) unAuthenticated,
    required TResult Function(_AuthState_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthState_Loading value)? loading,
    TResult? Function(_AuthState_UnKnown value)? unKnown,
    TResult? Function(_AuthState_Authenticated value)? authenticated,
    TResult? Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_AuthState_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthState_Loading value)? loading,
    TResult Function(_AuthState_UnKnown value)? unKnown,
    TResult Function(_AuthState_Authenticated value)? authenticated,
    TResult Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult Function(_AuthState_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthState_Loading implements AuthState {
  const factory _AuthState_Loading() = _$_AuthState_Loading;
}

/// @nodoc
abstract class _$$_AuthState_UnKnownCopyWith<$Res> {
  factory _$$_AuthState_UnKnownCopyWith(_$_AuthState_UnKnown value,
          $Res Function(_$_AuthState_UnKnown) then) =
      __$$_AuthState_UnKnownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthState_UnKnownCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState_UnKnown>
    implements _$$_AuthState_UnKnownCopyWith<$Res> {
  __$$_AuthState_UnKnownCopyWithImpl(
      _$_AuthState_UnKnown _value, $Res Function(_$_AuthState_UnKnown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthState_UnKnown implements _AuthState_UnKnown {
  const _$_AuthState_UnKnown();

  @override
  String toString() {
    return 'AuthState.unKnown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthState_UnKnown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unKnown,
    required TResult Function(ElvanUser elvanUser) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String? message) error,
  }) {
    return unKnown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unKnown,
    TResult? Function(ElvanUser elvanUser)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String? message)? error,
  }) {
    return unKnown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unKnown,
    TResult Function(ElvanUser elvanUser)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (unKnown != null) {
      return unKnown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthState_Loading value) loading,
    required TResult Function(_AuthState_UnKnown value) unKnown,
    required TResult Function(_AuthState_Authenticated value) authenticated,
    required TResult Function(_AuthState_UnAuthenticated value) unAuthenticated,
    required TResult Function(_AuthState_Error value) error,
  }) {
    return unKnown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthState_Loading value)? loading,
    TResult? Function(_AuthState_UnKnown value)? unKnown,
    TResult? Function(_AuthState_Authenticated value)? authenticated,
    TResult? Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_AuthState_Error value)? error,
  }) {
    return unKnown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthState_Loading value)? loading,
    TResult Function(_AuthState_UnKnown value)? unKnown,
    TResult Function(_AuthState_Authenticated value)? authenticated,
    TResult Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult Function(_AuthState_Error value)? error,
    required TResult orElse(),
  }) {
    if (unKnown != null) {
      return unKnown(this);
    }
    return orElse();
  }
}

abstract class _AuthState_UnKnown implements AuthState {
  const factory _AuthState_UnKnown() = _$_AuthState_UnKnown;
}

/// @nodoc
abstract class _$$_AuthState_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthState_AuthenticatedCopyWith(_$_AuthState_Authenticated value,
          $Res Function(_$_AuthState_Authenticated) then) =
      __$$_AuthState_AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({ElvanUser elvanUser});

  $ElvanUserCopyWith<$Res> get elvanUser;
}

/// @nodoc
class __$$_AuthState_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState_Authenticated>
    implements _$$_AuthState_AuthenticatedCopyWith<$Res> {
  __$$_AuthState_AuthenticatedCopyWithImpl(_$_AuthState_Authenticated _value,
      $Res Function(_$_AuthState_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elvanUser = null,
  }) {
    return _then(_$_AuthState_Authenticated(
      null == elvanUser
          ? _value.elvanUser
          : elvanUser // ignore: cast_nullable_to_non_nullable
              as ElvanUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ElvanUserCopyWith<$Res> get elvanUser {
    return $ElvanUserCopyWith<$Res>(_value.elvanUser, (value) {
      return _then(_value.copyWith(elvanUser: value));
    });
  }
}

/// @nodoc

class _$_AuthState_Authenticated implements _AuthState_Authenticated {
  const _$_AuthState_Authenticated(this.elvanUser);

  @override
  final ElvanUser elvanUser;

  @override
  String toString() {
    return 'AuthState.authenticated(elvanUser: $elvanUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState_Authenticated &&
            (identical(other.elvanUser, elvanUser) ||
                other.elvanUser == elvanUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, elvanUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthState_AuthenticatedCopyWith<_$_AuthState_Authenticated>
      get copyWith =>
          __$$_AuthState_AuthenticatedCopyWithImpl<_$_AuthState_Authenticated>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unKnown,
    required TResult Function(ElvanUser elvanUser) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String? message) error,
  }) {
    return authenticated(elvanUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unKnown,
    TResult? Function(ElvanUser elvanUser)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String? message)? error,
  }) {
    return authenticated?.call(elvanUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unKnown,
    TResult Function(ElvanUser elvanUser)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(elvanUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthState_Loading value) loading,
    required TResult Function(_AuthState_UnKnown value) unKnown,
    required TResult Function(_AuthState_Authenticated value) authenticated,
    required TResult Function(_AuthState_UnAuthenticated value) unAuthenticated,
    required TResult Function(_AuthState_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthState_Loading value)? loading,
    TResult? Function(_AuthState_UnKnown value)? unKnown,
    TResult? Function(_AuthState_Authenticated value)? authenticated,
    TResult? Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_AuthState_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthState_Loading value)? loading,
    TResult Function(_AuthState_UnKnown value)? unKnown,
    TResult Function(_AuthState_Authenticated value)? authenticated,
    TResult Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult Function(_AuthState_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthState_Authenticated implements AuthState {
  const factory _AuthState_Authenticated(final ElvanUser elvanUser) =
      _$_AuthState_Authenticated;

  ElvanUser get elvanUser;
  @JsonKey(ignore: true)
  _$$_AuthState_AuthenticatedCopyWith<_$_AuthState_Authenticated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthState_UnAuthenticatedCopyWith<$Res> {
  factory _$$_AuthState_UnAuthenticatedCopyWith(
          _$_AuthState_UnAuthenticated value,
          $Res Function(_$_AuthState_UnAuthenticated) then) =
      __$$_AuthState_UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthState_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState_UnAuthenticated>
    implements _$$_AuthState_UnAuthenticatedCopyWith<$Res> {
  __$$_AuthState_UnAuthenticatedCopyWithImpl(
      _$_AuthState_UnAuthenticated _value,
      $Res Function(_$_AuthState_UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthState_UnAuthenticated implements _AuthState_UnAuthenticated {
  const _$_AuthState_UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState_UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unKnown,
    required TResult Function(ElvanUser elvanUser) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String? message) error,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unKnown,
    TResult? Function(ElvanUser elvanUser)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String? message)? error,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unKnown,
    TResult Function(ElvanUser elvanUser)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthState_Loading value) loading,
    required TResult Function(_AuthState_UnKnown value) unKnown,
    required TResult Function(_AuthState_Authenticated value) authenticated,
    required TResult Function(_AuthState_UnAuthenticated value) unAuthenticated,
    required TResult Function(_AuthState_Error value) error,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthState_Loading value)? loading,
    TResult? Function(_AuthState_UnKnown value)? unKnown,
    TResult? Function(_AuthState_Authenticated value)? authenticated,
    TResult? Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_AuthState_Error value)? error,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthState_Loading value)? loading,
    TResult Function(_AuthState_UnKnown value)? unKnown,
    TResult Function(_AuthState_Authenticated value)? authenticated,
    TResult Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult Function(_AuthState_Error value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthState_UnAuthenticated implements AuthState {
  const factory _AuthState_UnAuthenticated() = _$_AuthState_UnAuthenticated;
}

/// @nodoc
abstract class _$$_AuthState_ErrorCopyWith<$Res> {
  factory _$$_AuthState_ErrorCopyWith(
          _$_AuthState_Error value, $Res Function(_$_AuthState_Error) then) =
      __$$_AuthState_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_AuthState_ErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState_Error>
    implements _$$_AuthState_ErrorCopyWith<$Res> {
  __$$_AuthState_ErrorCopyWithImpl(
      _$_AuthState_Error _value, $Res Function(_$_AuthState_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_AuthState_Error(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthState_Error implements _AuthState_Error {
  const _$_AuthState_Error([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthState_ErrorCopyWith<_$_AuthState_Error> get copyWith =>
      __$$_AuthState_ErrorCopyWithImpl<_$_AuthState_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unKnown,
    required TResult Function(ElvanUser elvanUser) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unKnown,
    TResult? Function(ElvanUser elvanUser)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unKnown,
    TResult Function(ElvanUser elvanUser)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthState_Loading value) loading,
    required TResult Function(_AuthState_UnKnown value) unKnown,
    required TResult Function(_AuthState_Authenticated value) authenticated,
    required TResult Function(_AuthState_UnAuthenticated value) unAuthenticated,
    required TResult Function(_AuthState_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthState_Loading value)? loading,
    TResult? Function(_AuthState_UnKnown value)? unKnown,
    TResult? Function(_AuthState_Authenticated value)? authenticated,
    TResult? Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_AuthState_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthState_Loading value)? loading,
    TResult Function(_AuthState_UnKnown value)? unKnown,
    TResult Function(_AuthState_Authenticated value)? authenticated,
    TResult Function(_AuthState_UnAuthenticated value)? unAuthenticated,
    TResult Function(_AuthState_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthState_Error implements AuthState {
  const factory _AuthState_Error([final String? message]) = _$_AuthState_Error;

  String? get message;
  @JsonKey(ignore: true)
  _$$_AuthState_ErrorCopyWith<_$_AuthState_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
