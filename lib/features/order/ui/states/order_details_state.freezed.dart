// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderDetatilsState {
  bool get isOpenDetatils => throw _privateConstructorUsedError;
  int get xOffset => throw _privateConstructorUsedError;
  Order? get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetatilsStateCopyWith<OrderDetatilsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetatilsStateCopyWith<$Res> {
  factory $OrderDetatilsStateCopyWith(OrderDetatilsState value, $Res Function(OrderDetatilsState) then) = _$OrderDetatilsStateCopyWithImpl<$Res, OrderDetatilsState>;
  @useResult
  $Res call({bool isOpenDetatils, int xOffset, Order? order});

  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class _$OrderDetatilsStateCopyWithImpl<$Res, $Val extends OrderDetatilsState> implements $OrderDetatilsStateCopyWith<$Res> {
  _$OrderDetatilsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenDetatils = null,
    Object? xOffset = null,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      isOpenDetatils: null == isOpenDetatils
          ? _value.isOpenDetatils
          : isOpenDetatils // ignore: cast_nullable_to_non_nullable
              as bool,
      xOffset: null == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetatilsStateCopyWith<$Res> implements $OrderDetatilsStateCopyWith<$Res> {
  factory _$$_OrderDetatilsStateCopyWith(_$_OrderDetatilsState value, $Res Function(_$_OrderDetatilsState) then) = __$$_OrderDetatilsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOpenDetatils, int xOffset, Order? order});

  @override
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class __$$_OrderDetatilsStateCopyWithImpl<$Res> extends _$OrderDetatilsStateCopyWithImpl<$Res, _$_OrderDetatilsState> implements _$$_OrderDetatilsStateCopyWith<$Res> {
  __$$_OrderDetatilsStateCopyWithImpl(_$_OrderDetatilsState _value, $Res Function(_$_OrderDetatilsState) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenDetatils = null,
    Object? xOffset = null,
    Object? order = freezed,
  }) {
    return _then(_$_OrderDetatilsState(
      isOpenDetatils: null == isOpenDetatils
          ? _value.isOpenDetatils
          : isOpenDetatils // ignore: cast_nullable_to_non_nullable
              as bool,
      xOffset: null == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ));
  }
}

/// @nodoc

class _$_OrderDetatilsState implements _OrderDetatilsState {
  const _$_OrderDetatilsState({this.isOpenDetatils = false, this.xOffset = 0, this.order});

  @override
  @JsonKey()
  final bool isOpenDetatils;
  @override
  @JsonKey()
  final int xOffset;
  @override
  final Order? order;

  @override
  String toString() {
    return 'OrderDetatilsState(isOpenDetatils: $isOpenDetatils, xOffset: $xOffset, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetatilsState &&
            (identical(other.isOpenDetatils, isOpenDetatils) || other.isOpenDetatils == isOpenDetatils) &&
            (identical(other.xOffset, xOffset) || other.xOffset == xOffset) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOpenDetatils, xOffset, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetatilsStateCopyWith<_$_OrderDetatilsState> get copyWith => __$$_OrderDetatilsStateCopyWithImpl<_$_OrderDetatilsState>(this, _$identity);
}

abstract class _OrderDetatilsState implements OrderDetatilsState {
  const factory _OrderDetatilsState({final bool isOpenDetatils, final int xOffset, final Order? order}) = _$_OrderDetatilsState;

  @override
  bool get isOpenDetatils;
  @override
  int get xOffset;
  @override
  Order? get order;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetatilsStateCopyWith<_$_OrderDetatilsState> get copyWith => throw _privateConstructorUsedError;
}
