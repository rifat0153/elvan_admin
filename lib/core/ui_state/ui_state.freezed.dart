// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UiState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error, StackTrace? st) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error, StackTrace? st)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error, StackTrace? st)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State_Loading<T> value) loading,
    required TResult Function(_State_Data<T> value) data,
    required TResult Function(_State_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State_Loading<T> value)? loading,
    TResult? Function(_State_Data<T> value)? data,
    TResult? Function(_State_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State_Loading<T> value)? loading,
    TResult Function(_State_Data<T> value)? data,
    TResult Function(_State_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiStateCopyWith<T, $Res> {
  factory $UiStateCopyWith(UiState<T> value, $Res Function(UiState<T>) then) =
      _$UiStateCopyWithImpl<T, $Res, UiState<T>>;
}

/// @nodoc
class _$UiStateCopyWithImpl<T, $Res, $Val extends UiState<T>>
    implements $UiStateCopyWith<T, $Res> {
  _$UiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_State_LoadingCopyWith<T, $Res> {
  factory _$$_State_LoadingCopyWith(
          _$_State_Loading<T> value, $Res Function(_$_State_Loading<T>) then) =
      __$$_State_LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_State_LoadingCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$_State_Loading<T>>
    implements _$$_State_LoadingCopyWith<T, $Res> {
  __$$_State_LoadingCopyWithImpl(
      _$_State_Loading<T> _value, $Res Function(_$_State_Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_State_Loading<T> extends _State_Loading<T> {
  const _$_State_Loading() : super._();

  @override
  String toString() {
    return 'UiState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_State_Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error, StackTrace? st) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error, StackTrace? st)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error, StackTrace? st)? error,
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
    required TResult Function(_State_Loading<T> value) loading,
    required TResult Function(_State_Data<T> value) data,
    required TResult Function(_State_Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State_Loading<T> value)? loading,
    TResult? Function(_State_Data<T> value)? data,
    TResult? Function(_State_Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State_Loading<T> value)? loading,
    TResult Function(_State_Data<T> value)? data,
    TResult Function(_State_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _State_Loading<T> extends UiState<T> {
  const factory _State_Loading() = _$_State_Loading<T>;
  const _State_Loading._() : super._();
}

/// @nodoc
abstract class _$$_State_DataCopyWith<T, $Res> {
  factory _$$_State_DataCopyWith(
          _$_State_Data<T> value, $Res Function(_$_State_Data<T>) then) =
      __$$_State_DataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_State_DataCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$_State_Data<T>>
    implements _$$_State_DataCopyWith<T, $Res> {
  __$$_State_DataCopyWithImpl(
      _$_State_Data<T> _value, $Res Function(_$_State_Data<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_State_Data<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_State_Data<T> extends _State_Data<T> {
  const _$_State_Data(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'UiState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State_Data<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_State_DataCopyWith<T, _$_State_Data<T>> get copyWith =>
      __$$_State_DataCopyWithImpl<T, _$_State_Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error, StackTrace? st) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error, StackTrace? st)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State_Loading<T> value) loading,
    required TResult Function(_State_Data<T> value) data,
    required TResult Function(_State_Error<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State_Loading<T> value)? loading,
    TResult? Function(_State_Data<T> value)? data,
    TResult? Function(_State_Error<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State_Loading<T> value)? loading,
    TResult Function(_State_Data<T> value)? data,
    TResult Function(_State_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _State_Data<T> extends UiState<T> {
  const factory _State_Data(final T data) = _$_State_Data<T>;
  const _State_Data._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_State_DataCopyWith<T, _$_State_Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_State_ErrorCopyWith<T, $Res> {
  factory _$$_State_ErrorCopyWith(
          _$_State_Error<T> value, $Res Function(_$_State_Error<T>) then) =
      __$$_State_ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? error, StackTrace? st});
}

/// @nodoc
class __$$_State_ErrorCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$_State_Error<T>>
    implements _$$_State_ErrorCopyWith<T, $Res> {
  __$$_State_ErrorCopyWithImpl(
      _$_State_Error<T> _value, $Res Function(_$_State_Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? st = freezed,
  }) {
    return _then(_$_State_Error<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == st
          ? _value.st
          : st // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_State_Error<T> extends _State_Error<T> {
  const _$_State_Error(this.error, [this.st]) : super._();

  @override
  final String? error;
  @override
  final StackTrace? st;

  @override
  String toString() {
    return 'UiState<$T>.error(error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State_Error<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.st, st) || other.st == st));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, st);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_State_ErrorCopyWith<T, _$_State_Error<T>> get copyWith =>
      __$$_State_ErrorCopyWithImpl<T, _$_State_Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error, StackTrace? st) error,
  }) {
    return error(this.error, st);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error, StackTrace? st)? error,
  }) {
    return error?.call(this.error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State_Loading<T> value) loading,
    required TResult Function(_State_Data<T> value) data,
    required TResult Function(_State_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State_Loading<T> value)? loading,
    TResult? Function(_State_Data<T> value)? data,
    TResult? Function(_State_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State_Loading<T> value)? loading,
    TResult Function(_State_Data<T> value)? data,
    TResult Function(_State_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _State_Error<T> extends UiState<T> {
  const factory _State_Error(final String? error, [final StackTrace? st]) =
      _$_State_Error<T>;
  const _State_Error._() : super._();

  String? get error;
  StackTrace? get st;
  @JsonKey(ignore: true)
  _$$_State_ErrorCopyWith<T, _$_State_Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
