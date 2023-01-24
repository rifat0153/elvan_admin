// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimerDto _$TimerDtoFromJson(Map<String, dynamic> json) {
  return _TimerDto.fromJson(json);
}

/// @nodoc
mixin _$TimerDto {
  bool get takingOrder => throw _privateConstructorUsedError;
  int get defaultTime => throw _privateConstructorUsedError;
  String? get notice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimerDtoCopyWith<TimerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerDtoCopyWith<$Res> {
  factory $TimerDtoCopyWith(TimerDto value, $Res Function(TimerDto) then) =
      _$TimerDtoCopyWithImpl<$Res, TimerDto>;
  @useResult
  $Res call({bool takingOrder, int defaultTime, String? notice});
}

/// @nodoc
class _$TimerDtoCopyWithImpl<$Res, $Val extends TimerDto>
    implements $TimerDtoCopyWith<$Res> {
  _$TimerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? takingOrder = null,
    Object? defaultTime = null,
    Object? notice = freezed,
  }) {
    return _then(_value.copyWith(
      takingOrder: null == takingOrder
          ? _value.takingOrder
          : takingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultTime: null == defaultTime
          ? _value.defaultTime
          : defaultTime // ignore: cast_nullable_to_non_nullable
              as int,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerDtoCopyWith<$Res> implements $TimerDtoCopyWith<$Res> {
  factory _$$_TimerDtoCopyWith(
          _$_TimerDto value, $Res Function(_$_TimerDto) then) =
      __$$_TimerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool takingOrder, int defaultTime, String? notice});
}

/// @nodoc
class __$$_TimerDtoCopyWithImpl<$Res>
    extends _$TimerDtoCopyWithImpl<$Res, _$_TimerDto>
    implements _$$_TimerDtoCopyWith<$Res> {
  __$$_TimerDtoCopyWithImpl(
      _$_TimerDto _value, $Res Function(_$_TimerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? takingOrder = null,
    Object? defaultTime = null,
    Object? notice = freezed,
  }) {
    return _then(_$_TimerDto(
      takingOrder: null == takingOrder
          ? _value.takingOrder
          : takingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultTime: null == defaultTime
          ? _value.defaultTime
          : defaultTime // ignore: cast_nullable_to_non_nullable
              as int,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimerDto implements _TimerDto {
  const _$_TimerDto(
      {this.takingOrder = false, this.defaultTime = 0, this.notice});

  factory _$_TimerDto.fromJson(Map<String, dynamic> json) =>
      _$$_TimerDtoFromJson(json);

  @override
  @JsonKey()
  final bool takingOrder;
  @override
  @JsonKey()
  final int defaultTime;
  @override
  final String? notice;

  @override
  String toString() {
    return 'TimerDto(takingOrder: $takingOrder, defaultTime: $defaultTime, notice: $notice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerDto &&
            (identical(other.takingOrder, takingOrder) ||
                other.takingOrder == takingOrder) &&
            (identical(other.defaultTime, defaultTime) ||
                other.defaultTime == defaultTime) &&
            (identical(other.notice, notice) || other.notice == notice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, takingOrder, defaultTime, notice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerDtoCopyWith<_$_TimerDto> get copyWith =>
      __$$_TimerDtoCopyWithImpl<_$_TimerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimerDtoToJson(
      this,
    );
  }
}

abstract class _TimerDto implements TimerDto {
  const factory _TimerDto(
      {final bool takingOrder,
      final int defaultTime,
      final String? notice}) = _$_TimerDto;

  factory _TimerDto.fromJson(Map<String, dynamic> json) = _$_TimerDto.fromJson;

  @override
  bool get takingOrder;
  @override
  int get defaultTime;
  @override
  String? get notice;
  @override
  @JsonKey(ignore: true)
  _$$_TimerDtoCopyWith<_$_TimerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
