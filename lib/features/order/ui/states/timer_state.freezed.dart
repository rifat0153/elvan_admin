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
mixin _$TimerState {
  Timer? get countdownTimer => throw _privateConstructorUsedError;
  dynamic get isRunnig => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call({Timer? countdownTimer, dynamic isRunnig, Duration duration});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countdownTimer = freezed,
    Object? isRunnig = freezed,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      countdownTimer: freezed == countdownTimer
          ? _value.countdownTimer
          : countdownTimer // ignore: cast_nullable_to_non_nullable
              as Timer?,
      isRunnig: freezed == isRunnig
          ? _value.isRunnig
          : isRunnig // ignore: cast_nullable_to_non_nullable
              as dynamic,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerStateCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$_TimerStateCopyWith(
          _$_TimerState value, $Res Function(_$_TimerState) then) =
      __$$_TimerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timer? countdownTimer, dynamic isRunnig, Duration duration});
}

/// @nodoc
class __$$_TimerStateCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_TimerState>
    implements _$$_TimerStateCopyWith<$Res> {
  __$$_TimerStateCopyWithImpl(
      _$_TimerState _value, $Res Function(_$_TimerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countdownTimer = freezed,
    Object? isRunnig = freezed,
    Object? duration = null,
  }) {
    return _then(_$_TimerState(
      countdownTimer: freezed == countdownTimer
          ? _value.countdownTimer
          : countdownTimer // ignore: cast_nullable_to_non_nullable
              as Timer?,
      isRunnig: freezed == isRunnig ? _value.isRunnig! : isRunnig,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerState implements _TimerState {
  const _$_TimerState(
      {this.countdownTimer,
      this.isRunnig = false,
      this.duration = const Duration(minutes: 30)});

  @override
  final Timer? countdownTimer;
  @override
  @JsonKey()
  final dynamic isRunnig;
  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'TimerState(countdownTimer: $countdownTimer, isRunnig: $isRunnig, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerState &&
            (identical(other.countdownTimer, countdownTimer) ||
                other.countdownTimer == countdownTimer) &&
            const DeepCollectionEquality().equals(other.isRunnig, isRunnig) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countdownTimer,
      const DeepCollectionEquality().hash(isRunnig), duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerStateCopyWith<_$_TimerState> get copyWith =>
      __$$_TimerStateCopyWithImpl<_$_TimerState>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState(
      {final Timer? countdownTimer,
      final dynamic isRunnig,
      final Duration duration}) = _$_TimerState;

  @override
  Timer? get countdownTimer;
  @override
  dynamic get isRunnig;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_TimerStateCopyWith<_$_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
