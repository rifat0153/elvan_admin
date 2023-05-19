// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodState {
  bool get loading => throw _privateConstructorUsedError;
  bool get haseMore => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Map<String, dynamic>>> get items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodStateCopyWith<FoodState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodStateCopyWith<$Res> {
  factory $FoodStateCopyWith(FoodState value, $Res Function(FoodState) then) = _$FoodStateCopyWithImpl<$Res, FoodState>;
  @useResult
  $Res call({bool loading, bool haseMore, List<DocumentSnapshot<Map<String, dynamic>>> items, int page});
}

/// @nodoc
class _$FoodStateCopyWithImpl<$Res, $Val extends FoodState> implements $FoodStateCopyWith<$Res> {
  _$FoodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? haseMore = null,
    Object? items = null,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Map<String, dynamic>>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodStateCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$$_FoodStateCopyWith(_$_FoodState value, $Res Function(_$_FoodState) then) = __$$_FoodStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool haseMore, List<DocumentSnapshot<Map<String, dynamic>>> items, int page});
}

/// @nodoc
class __$$_FoodStateCopyWithImpl<$Res> extends _$FoodStateCopyWithImpl<$Res, _$_FoodState> implements _$$_FoodStateCopyWith<$Res> {
  __$$_FoodStateCopyWithImpl(_$_FoodState _value, $Res Function(_$_FoodState) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? haseMore = null,
    Object? items = null,
    Object? page = null,
  }) {
    return _then(_$_FoodState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      haseMore: null == haseMore
          ? _value.haseMore
          : haseMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Map<String, dynamic>>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FoodState implements _FoodState {
  const _$_FoodState({this.loading = false, this.haseMore = false, final List<DocumentSnapshot<Map<String, dynamic>>> items = const [], this.page = 1}) : _items = items;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool haseMore;
  final List<DocumentSnapshot<Map<String, dynamic>>> _items;
  @override
  @JsonKey()
  List<DocumentSnapshot<Map<String, dynamic>>> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'FoodState(loading: $loading, haseMore: $haseMore, items: $items, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.haseMore, haseMore) || other.haseMore == haseMore) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, haseMore, const DeepCollectionEquality().hash(_items), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodStateCopyWith<_$_FoodState> get copyWith => __$$_FoodStateCopyWithImpl<_$_FoodState>(this, _$identity);
}

abstract class _FoodState implements FoodState {
  const factory _FoodState({final bool loading, final bool haseMore, final List<DocumentSnapshot<Map<String, dynamic>>> items, final int page}) = _$_FoodState;

  @override
  bool get loading;
  @override
  bool get haseMore;
  @override
  List<DocumentSnapshot<Map<String, dynamic>>> get items;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_FoodStateCopyWith<_$_FoodState> get copyWith => throw _privateConstructorUsedError;
}
