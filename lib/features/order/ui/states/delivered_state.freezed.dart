// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivered_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveredState {
  bool get loading => throw _privateConstructorUsedError;
  bool get haseMore => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Map<String, dynamic>>> get orders =>
      throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveredStateCopyWith<DeliveredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveredStateCopyWith<$Res> {
  factory $DeliveredStateCopyWith(
          DeliveredState value, $Res Function(DeliveredState) then) =
      _$DeliveredStateCopyWithImpl<$Res, DeliveredState>;
  @useResult
  $Res call(
      {bool loading,
      bool haseMore,
      List<DocumentSnapshot<Map<String, dynamic>>> orders,
      int page});
}

/// @nodoc
class _$DeliveredStateCopyWithImpl<$Res, $Val extends DeliveredState>
    implements $DeliveredStateCopyWith<$Res> {
  _$DeliveredStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? haseMore = null,
    Object? orders = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      haseMore: null == haseMore
          ? _value.haseMore
          : haseMore // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Map<String, dynamic>>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveredStateCopyWith<$Res>
    implements $DeliveredStateCopyWith<$Res> {
  factory _$$_DeliveredStateCopyWith(
          _$_DeliveredState value, $Res Function(_$_DeliveredState) then) =
      __$$_DeliveredStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool haseMore,
      List<DocumentSnapshot<Map<String, dynamic>>> orders,
      int page});
}

/// @nodoc
class __$$_DeliveredStateCopyWithImpl<$Res>
    extends _$DeliveredStateCopyWithImpl<$Res, _$_DeliveredState>
    implements _$$_DeliveredStateCopyWith<$Res> {
  __$$_DeliveredStateCopyWithImpl(
      _$_DeliveredState _value, $Res Function(_$_DeliveredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? haseMore = null,
    Object? orders = null,
    Object? page = null,
  }) {
    return _then(_$_DeliveredState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      haseMore: null == haseMore
          ? _value.haseMore
          : haseMore // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Map<String, dynamic>>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeliveredState implements _DeliveredState {
  const _$_DeliveredState(
      {this.loading = false,
      this.haseMore = false,
      final List<DocumentSnapshot<Map<String, dynamic>>> orders = const [],
      this.page = 1})
      : _orders = orders;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool haseMore;
  final List<DocumentSnapshot<Map<String, dynamic>>> _orders;
  @override
  @JsonKey()
  List<DocumentSnapshot<Map<String, dynamic>>> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'DeliveredState(loading: $loading, haseMore: $haseMore, orders: $orders, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveredState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.haseMore, haseMore) ||
                other.haseMore == haseMore) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, haseMore,
      const DeepCollectionEquality().hash(_orders), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveredStateCopyWith<_$_DeliveredState> get copyWith =>
      __$$_DeliveredStateCopyWithImpl<_$_DeliveredState>(this, _$identity);
}

abstract class _DeliveredState implements DeliveredState {
  const factory _DeliveredState(
      {final bool loading,
      final bool haseMore,
      final List<DocumentSnapshot<Map<String, dynamic>>> orders,
      final int page}) = _$_DeliveredState;

  @override
  bool get loading;
  @override
  bool get haseMore;
  @override
  List<DocumentSnapshot<Map<String, dynamic>>> get orders;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveredStateCopyWith<_$_DeliveredState> get copyWith =>
      throw _privateConstructorUsedError;
}
