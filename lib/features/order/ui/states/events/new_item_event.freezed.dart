// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_item_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) onAccept,
    required TResult Function(dynamic data) onReject,
    required TResult Function(int min) onMinutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? onAccept,
    TResult? Function(dynamic data)? onReject,
    TResult? Function(int min)? onMinutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? onAccept,
    TResult Function(dynamic data)? onReject,
    TResult Function(int min)? onMinutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnMinutes value) onMinutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnMinutes value)? onMinutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnMinutes value)? onMinutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewItemEventCopyWith<$Res> {
  factory $NewItemEventCopyWith(
          NewItemEvent value, $Res Function(NewItemEvent) then) =
      _$NewItemEventCopyWithImpl<$Res, NewItemEvent>;
}

/// @nodoc
class _$NewItemEventCopyWithImpl<$Res, $Val extends NewItemEvent>
    implements $NewItemEventCopyWith<$Res> {
  _$NewItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewItemEvent_OnAcceptCopyWith<$Res> {
  factory _$$_NewItemEvent_OnAcceptCopyWith(_$_NewItemEvent_OnAccept value,
          $Res Function(_$_NewItemEvent_OnAccept) then) =
      __$$_NewItemEvent_OnAcceptCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_NewItemEvent_OnAcceptCopyWithImpl<$Res>
    extends _$NewItemEventCopyWithImpl<$Res, _$_NewItemEvent_OnAccept>
    implements _$$_NewItemEvent_OnAcceptCopyWith<$Res> {
  __$$_NewItemEvent_OnAcceptCopyWithImpl(_$_NewItemEvent_OnAccept _value,
      $Res Function(_$_NewItemEvent_OnAccept) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_NewItemEvent_OnAccept(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_NewItemEvent_OnAccept implements _NewItemEvent_OnAccept {
  const _$_NewItemEvent_OnAccept({this.data});

  @override
  final dynamic data;

  @override
  String toString() {
    return 'NewItemEvent.onAccept(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEvent_OnAccept &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEvent_OnAcceptCopyWith<_$_NewItemEvent_OnAccept> get copyWith =>
      __$$_NewItemEvent_OnAcceptCopyWithImpl<_$_NewItemEvent_OnAccept>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) onAccept,
    required TResult Function(dynamic data) onReject,
    required TResult Function(int min) onMinutes,
  }) {
    return onAccept(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? onAccept,
    TResult? Function(dynamic data)? onReject,
    TResult? Function(int min)? onMinutes,
  }) {
    return onAccept?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? onAccept,
    TResult Function(dynamic data)? onReject,
    TResult Function(int min)? onMinutes,
    required TResult orElse(),
  }) {
    if (onAccept != null) {
      return onAccept(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnMinutes value) onMinutes,
  }) {
    return onAccept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnMinutes value)? onMinutes,
  }) {
    return onAccept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnMinutes value)? onMinutes,
    required TResult orElse(),
  }) {
    if (onAccept != null) {
      return onAccept(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_OnAccept implements NewItemEvent {
  const factory _NewItemEvent_OnAccept({final dynamic data}) =
      _$_NewItemEvent_OnAccept;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_NewItemEvent_OnAcceptCopyWith<_$_NewItemEvent_OnAccept> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewItemEvent_OnRejectCopyWith<$Res> {
  factory _$$_NewItemEvent_OnRejectCopyWith(_$_NewItemEvent_OnReject value,
          $Res Function(_$_NewItemEvent_OnReject) then) =
      __$$_NewItemEvent_OnRejectCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_NewItemEvent_OnRejectCopyWithImpl<$Res>
    extends _$NewItemEventCopyWithImpl<$Res, _$_NewItemEvent_OnReject>
    implements _$$_NewItemEvent_OnRejectCopyWith<$Res> {
  __$$_NewItemEvent_OnRejectCopyWithImpl(_$_NewItemEvent_OnReject _value,
      $Res Function(_$_NewItemEvent_OnReject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_NewItemEvent_OnReject(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_NewItemEvent_OnReject implements _NewItemEvent_OnReject {
  const _$_NewItemEvent_OnReject(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'NewItemEvent.onReject(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEvent_OnReject &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEvent_OnRejectCopyWith<_$_NewItemEvent_OnReject> get copyWith =>
      __$$_NewItemEvent_OnRejectCopyWithImpl<_$_NewItemEvent_OnReject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) onAccept,
    required TResult Function(dynamic data) onReject,
    required TResult Function(int min) onMinutes,
  }) {
    return onReject(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? onAccept,
    TResult? Function(dynamic data)? onReject,
    TResult? Function(int min)? onMinutes,
  }) {
    return onReject?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? onAccept,
    TResult Function(dynamic data)? onReject,
    TResult Function(int min)? onMinutes,
    required TResult orElse(),
  }) {
    if (onReject != null) {
      return onReject(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnMinutes value) onMinutes,
  }) {
    return onReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnMinutes value)? onMinutes,
  }) {
    return onReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnMinutes value)? onMinutes,
    required TResult orElse(),
  }) {
    if (onReject != null) {
      return onReject(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_OnReject implements NewItemEvent {
  const factory _NewItemEvent_OnReject(final dynamic data) =
      _$_NewItemEvent_OnReject;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_NewItemEvent_OnRejectCopyWith<_$_NewItemEvent_OnReject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewItemEvent_OnMinutesCopyWith<$Res> {
  factory _$$_NewItemEvent_OnMinutesCopyWith(_$_NewItemEvent_OnMinutes value,
          $Res Function(_$_NewItemEvent_OnMinutes) then) =
      __$$_NewItemEvent_OnMinutesCopyWithImpl<$Res>;
  @useResult
  $Res call({int min});
}

/// @nodoc
class __$$_NewItemEvent_OnMinutesCopyWithImpl<$Res>
    extends _$NewItemEventCopyWithImpl<$Res, _$_NewItemEvent_OnMinutes>
    implements _$$_NewItemEvent_OnMinutesCopyWith<$Res> {
  __$$_NewItemEvent_OnMinutesCopyWithImpl(_$_NewItemEvent_OnMinutes _value,
      $Res Function(_$_NewItemEvent_OnMinutes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
  }) {
    return _then(_$_NewItemEvent_OnMinutes(
      null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NewItemEvent_OnMinutes implements _NewItemEvent_OnMinutes {
  const _$_NewItemEvent_OnMinutes(this.min);

  @override
  final int min;

  @override
  String toString() {
    return 'NewItemEvent.onMinutes(min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEvent_OnMinutes &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEvent_OnMinutesCopyWith<_$_NewItemEvent_OnMinutes> get copyWith =>
      __$$_NewItemEvent_OnMinutesCopyWithImpl<_$_NewItemEvent_OnMinutes>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) onAccept,
    required TResult Function(dynamic data) onReject,
    required TResult Function(int min) onMinutes,
  }) {
    return onMinutes(min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic data)? onAccept,
    TResult? Function(dynamic data)? onReject,
    TResult? Function(int min)? onMinutes,
  }) {
    return onMinutes?.call(min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? onAccept,
    TResult Function(dynamic data)? onReject,
    TResult Function(int min)? onMinutes,
    required TResult orElse(),
  }) {
    if (onMinutes != null) {
      return onMinutes(min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnMinutes value) onMinutes,
  }) {
    return onMinutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnMinutes value)? onMinutes,
  }) {
    return onMinutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnMinutes value)? onMinutes,
    required TResult orElse(),
  }) {
    if (onMinutes != null) {
      return onMinutes(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_OnMinutes implements NewItemEvent {
  const factory _NewItemEvent_OnMinutes(final int min) =
      _$_NewItemEvent_OnMinutes;

  int get min;
  @JsonKey(ignore: true)
  _$$_NewItemEvent_OnMinutesCopyWith<_$_NewItemEvent_OnMinutes> get copyWith =>
      throw _privateConstructorUsedError;
}
