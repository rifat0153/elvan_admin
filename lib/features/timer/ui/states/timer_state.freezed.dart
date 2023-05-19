// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DefaultTimerState {
  int get minutes => throw _privateConstructorUsedError;
  dynamic get takingHour => throw _privateConstructorUsedError;
  String? get notice => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefaultTimerStateCopyWith<DefaultTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultTimerStateCopyWith<$Res> {
  factory $DefaultTimerStateCopyWith(
          DefaultTimerState value, $Res Function(DefaultTimerState) then) =
      _$DefaultTimerStateCopyWithImpl<$Res, DefaultTimerState>;
  @useResult
  $Res call({int minutes, dynamic takingHour, String? notice, String? error});
}

/// @nodoc
class _$DefaultTimerStateCopyWithImpl<$Res, $Val extends DefaultTimerState>
    implements $DefaultTimerStateCopyWith<$Res> {
  _$DefaultTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
    Object? takingHour = freezed,
    Object? notice = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      takingHour: freezed == takingHour
          ? _value.takingHour
          : takingHour // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefaultTimerStateCopyWith<$Res>
    implements $DefaultTimerStateCopyWith<$Res> {
  factory _$$_DefaultTimerStateCopyWith(_$_DefaultTimerState value,
          $Res Function(_$_DefaultTimerState) then) =
      __$$_DefaultTimerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minutes, dynamic takingHour, String? notice, String? error});
}

/// @nodoc
class __$$_DefaultTimerStateCopyWithImpl<$Res>
    extends _$DefaultTimerStateCopyWithImpl<$Res, _$_DefaultTimerState>
    implements _$$_DefaultTimerStateCopyWith<$Res> {
  __$$_DefaultTimerStateCopyWithImpl(
      _$_DefaultTimerState _value, $Res Function(_$_DefaultTimerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
    Object? takingHour = freezed,
    Object? notice = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_DefaultTimerState(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      takingHour: freezed == takingHour ? _value.takingHour! : takingHour,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DefaultTimerState implements _DefaultTimerState {
  const _$_DefaultTimerState(
      {this.minutes = 0, this.takingHour = false, this.notice, this.error});

  @override
  @JsonKey()
  final int minutes;
  @override
  @JsonKey()
  final dynamic takingHour;
  @override
  final String? notice;
  @override
  final String? error;

  @override
  String toString() {
    return 'DefaultTimerState(minutes: $minutes, takingHour: $takingHour, notice: $notice, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultTimerState &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            const DeepCollectionEquality()
                .equals(other.takingHour, takingHour) &&
            (identical(other.notice, notice) || other.notice == notice) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutes,
      const DeepCollectionEquality().hash(takingHour), notice, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultTimerStateCopyWith<_$_DefaultTimerState> get copyWith =>
      __$$_DefaultTimerStateCopyWithImpl<_$_DefaultTimerState>(
          this, _$identity);
}

abstract class _DefaultTimerState implements DefaultTimerState {
  const factory _DefaultTimerState(
      {final int minutes,
      final dynamic takingHour,
      final String? notice,
      final String? error}) = _$_DefaultTimerState;

  @override
  int get minutes;
  @override
  dynamic get takingHour;
  @override
  String? get notice;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultTimerStateCopyWith<_$_DefaultTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
