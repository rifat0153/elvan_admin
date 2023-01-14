// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_new_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewItemState {
  bool get isOpenDetatils => throw _privateConstructorUsedError;
  double get xOffset => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  int? get selectedindex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewItemStateCopyWith<NewItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewItemStateCopyWith<$Res> {
  factory $NewItemStateCopyWith(
          NewItemState value, $Res Function(NewItemState) then) =
      _$NewItemStateCopyWithImpl<$Res, NewItemState>;
  @useResult
  $Res call(
      {bool isOpenDetatils, double xOffset, int minutes, int? selectedindex});
}

/// @nodoc
class _$NewItemStateCopyWithImpl<$Res, $Val extends NewItemState>
    implements $NewItemStateCopyWith<$Res> {
  _$NewItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenDetatils = null,
    Object? xOffset = null,
    Object? minutes = null,
    Object? selectedindex = freezed,
  }) {
    return _then(_value.copyWith(
      isOpenDetatils: null == isOpenDetatils
          ? _value.isOpenDetatils
          : isOpenDetatils // ignore: cast_nullable_to_non_nullable
              as bool,
      xOffset: null == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      selectedindex: freezed == selectedindex
          ? _value.selectedindex
          : selectedindex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewItemStateCopyWith<$Res>
    implements $NewItemStateCopyWith<$Res> {
  factory _$$_NewItemStateCopyWith(
          _$_NewItemState value, $Res Function(_$_NewItemState) then) =
      __$$_NewItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isOpenDetatils, double xOffset, int minutes, int? selectedindex});
}

/// @nodoc
class __$$_NewItemStateCopyWithImpl<$Res>
    extends _$NewItemStateCopyWithImpl<$Res, _$_NewItemState>
    implements _$$_NewItemStateCopyWith<$Res> {
  __$$_NewItemStateCopyWithImpl(
      _$_NewItemState _value, $Res Function(_$_NewItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenDetatils = null,
    Object? xOffset = null,
    Object? minutes = null,
    Object? selectedindex = freezed,
  }) {
    return _then(_$_NewItemState(
      isOpenDetatils: null == isOpenDetatils
          ? _value.isOpenDetatils
          : isOpenDetatils // ignore: cast_nullable_to_non_nullable
              as bool,
      xOffset: null == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      selectedindex: freezed == selectedindex
          ? _value.selectedindex
          : selectedindex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_NewItemState implements _NewItemState {
  const _$_NewItemState(
      {this.isOpenDetatils = false,
      this.xOffset = 0,
      this.minutes = 30,
      this.selectedindex});

  @override
  @JsonKey()
  final bool isOpenDetatils;
  @override
  @JsonKey()
  final double xOffset;
  @override
  @JsonKey()
  final int minutes;
  @override
  final int? selectedindex;

  @override
  String toString() {
    return 'NewItemState(isOpenDetatils: $isOpenDetatils, xOffset: $xOffset, minutes: $minutes, selectedindex: $selectedindex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemState &&
            (identical(other.isOpenDetatils, isOpenDetatils) ||
                other.isOpenDetatils == isOpenDetatils) &&
            (identical(other.xOffset, xOffset) || other.xOffset == xOffset) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.selectedindex, selectedindex) ||
                other.selectedindex == selectedindex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isOpenDetatils, xOffset, minutes, selectedindex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemStateCopyWith<_$_NewItemState> get copyWith =>
      __$$_NewItemStateCopyWithImpl<_$_NewItemState>(this, _$identity);
}

abstract class _NewItemState implements NewItemState {
  const factory _NewItemState(
      {final bool isOpenDetatils,
      final double xOffset,
      final int minutes,
      final int? selectedindex}) = _$_NewItemState;

  @override
  bool get isOpenDetatils;
  @override
  double get xOffset;
  @override
  int get minutes;
  @override
  int? get selectedindex;
  @override
  @JsonKey(ignore: true)
  _$$_NewItemStateCopyWith<_$_NewItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
