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
    required TResult Function(int second, Order data) onAccept,
    required TResult Function(Order data) onReject,
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int second, Order data)? onAccept,
    TResult? Function(Order data)? onReject,
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int second, Order data)? onAccept,
    TResult Function(Order data)? onReject,
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnDrawer value) onDrawer,
    required TResult Function(_NewItemEvent_SelecteItem value) selecteItem,
    required TResult Function(_NewItemEvent_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult? Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult? Function(_NewItemEvent_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult Function(_NewItemEvent_Refresh value)? refresh,
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
  $Res call({int second, Order data});

  $OrderCopyWith<$Res> get data;
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
    Object? second = null,
    Object? data = null,
  }) {
    return _then(_$_NewItemEvent_OnAccept(
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get data {
    return $OrderCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_NewItemEvent_OnAccept implements _NewItemEvent_OnAccept {
  const _$_NewItemEvent_OnAccept({required this.second, required this.data});

  @override
  final int second;
  @override
  final Order data;

  @override
  String toString() {
    return 'NewItemEvent.onAccept(second: $second, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEvent_OnAccept &&
            (identical(other.second, second) || other.second == second) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, second, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEvent_OnAcceptCopyWith<_$_NewItemEvent_OnAccept> get copyWith =>
      __$$_NewItemEvent_OnAcceptCopyWithImpl<_$_NewItemEvent_OnAccept>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int second, Order data) onAccept,
    required TResult Function(Order data) onReject,
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function() refresh,
  }) {
    return onAccept(second, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int second, Order data)? onAccept,
    TResult? Function(Order data)? onReject,
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function()? refresh,
  }) {
    return onAccept?.call(second, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int second, Order data)? onAccept,
    TResult Function(Order data)? onReject,
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (onAccept != null) {
      return onAccept(second, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnDrawer value) onDrawer,
    required TResult Function(_NewItemEvent_SelecteItem value) selecteItem,
    required TResult Function(_NewItemEvent_Refresh value) refresh,
  }) {
    return onAccept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult? Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult? Function(_NewItemEvent_Refresh value)? refresh,
  }) {
    return onAccept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult Function(_NewItemEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (onAccept != null) {
      return onAccept(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_OnAccept implements NewItemEvent {
  const factory _NewItemEvent_OnAccept(
      {required final int second,
      required final Order data}) = _$_NewItemEvent_OnAccept;

  int get second;
  Order get data;
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
  $Res call({Order data});

  $OrderCopyWith<$Res> get data;
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
    Object? data = null,
  }) {
    return _then(_$_NewItemEvent_OnReject(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get data {
    return $OrderCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_NewItemEvent_OnReject implements _NewItemEvent_OnReject {
  const _$_NewItemEvent_OnReject({required this.data});

  @override
  final Order data;

  @override
  String toString() {
    return 'NewItemEvent.onReject(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEvent_OnReject &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEvent_OnRejectCopyWith<_$_NewItemEvent_OnReject> get copyWith =>
      __$$_NewItemEvent_OnRejectCopyWithImpl<_$_NewItemEvent_OnReject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int second, Order data) onAccept,
    required TResult Function(Order data) onReject,
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function() refresh,
  }) {
    return onReject(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int second, Order data)? onAccept,
    TResult? Function(Order data)? onReject,
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function()? refresh,
  }) {
    return onReject?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int second, Order data)? onAccept,
    TResult Function(Order data)? onReject,
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function()? refresh,
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
    required TResult Function(_NewItemEvent_OnDrawer value) onDrawer,
    required TResult Function(_NewItemEvent_SelecteItem value) selecteItem,
    required TResult Function(_NewItemEvent_Refresh value) refresh,
  }) {
    return onReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult? Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult? Function(_NewItemEvent_Refresh value)? refresh,
  }) {
    return onReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult Function(_NewItemEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (onReject != null) {
      return onReject(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_OnReject implements NewItemEvent {
  const factory _NewItemEvent_OnReject({required final Order data}) =
      _$_NewItemEvent_OnReject;

  Order get data;
  @JsonKey(ignore: true)
  _$$_NewItemEvent_OnRejectCopyWith<_$_NewItemEvent_OnReject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewItemEvent_OnDrawerCopyWith<$Res> {
  factory _$$_NewItemEvent_OnDrawerCopyWith(_$_NewItemEvent_OnDrawer value,
          $Res Function(_$_NewItemEvent_OnDrawer) then) =
      __$$_NewItemEvent_OnDrawerCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_NewItemEvent_OnDrawerCopyWithImpl<$Res>
    extends _$NewItemEventCopyWithImpl<$Res, _$_NewItemEvent_OnDrawer>
    implements _$$_NewItemEvent_OnDrawerCopyWith<$Res> {
  __$$_NewItemEvent_OnDrawerCopyWithImpl(_$_NewItemEvent_OnDrawer _value,
      $Res Function(_$_NewItemEvent_OnDrawer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_NewItemEvent_OnDrawer(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_NewItemEvent_OnDrawer implements _NewItemEvent_OnDrawer {
  const _$_NewItemEvent_OnDrawer({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'NewItemEvent.onDrawer(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEvent_OnDrawer &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEvent_OnDrawerCopyWith<_$_NewItemEvent_OnDrawer> get copyWith =>
      __$$_NewItemEvent_OnDrawerCopyWithImpl<_$_NewItemEvent_OnDrawer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int second, Order data) onAccept,
    required TResult Function(Order data) onReject,
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function() refresh,
  }) {
    return onDrawer(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int second, Order data)? onAccept,
    TResult? Function(Order data)? onReject,
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function()? refresh,
  }) {
    return onDrawer?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int second, Order data)? onAccept,
    TResult Function(Order data)? onReject,
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (onDrawer != null) {
      return onDrawer(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnDrawer value) onDrawer,
    required TResult Function(_NewItemEvent_SelecteItem value) selecteItem,
    required TResult Function(_NewItemEvent_Refresh value) refresh,
  }) {
    return onDrawer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult? Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult? Function(_NewItemEvent_Refresh value)? refresh,
  }) {
    return onDrawer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult Function(_NewItemEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (onDrawer != null) {
      return onDrawer(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_OnDrawer implements NewItemEvent {
  const factory _NewItemEvent_OnDrawer({required final BuildContext context}) =
      _$_NewItemEvent_OnDrawer;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_NewItemEvent_OnDrawerCopyWith<_$_NewItemEvent_OnDrawer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewItemEvent_SelecteItemCopyWith<$Res> {
  factory _$$_NewItemEvent_SelecteItemCopyWith(
          _$_NewItemEvent_SelecteItem value,
          $Res Function(_$_NewItemEvent_SelecteItem) then) =
      __$$_NewItemEvent_SelecteItemCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_NewItemEvent_SelecteItemCopyWithImpl<$Res>
    extends _$NewItemEventCopyWithImpl<$Res, _$_NewItemEvent_SelecteItem>
    implements _$$_NewItemEvent_SelecteItemCopyWith<$Res> {
  __$$_NewItemEvent_SelecteItemCopyWithImpl(_$_NewItemEvent_SelecteItem _value,
      $Res Function(_$_NewItemEvent_SelecteItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? order = null,
  }) {
    return _then(_$_NewItemEvent_SelecteItem(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_NewItemEvent_SelecteItem implements _NewItemEvent_SelecteItem {
  const _$_NewItemEvent_SelecteItem(
      {required this.context, required this.order});

  @override
  final BuildContext context;
  @override
  final Order order;

  @override
  String toString() {
    return 'NewItemEvent.selecteItem(context: $context, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEvent_SelecteItem &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEvent_SelecteItemCopyWith<_$_NewItemEvent_SelecteItem>
      get copyWith => __$$_NewItemEvent_SelecteItemCopyWithImpl<
          _$_NewItemEvent_SelecteItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int second, Order data) onAccept,
    required TResult Function(Order data) onReject,
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function() refresh,
  }) {
    return selecteItem(context, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int second, Order data)? onAccept,
    TResult? Function(Order data)? onReject,
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function()? refresh,
  }) {
    return selecteItem?.call(context, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int second, Order data)? onAccept,
    TResult Function(Order data)? onReject,
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (selecteItem != null) {
      return selecteItem(context, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnDrawer value) onDrawer,
    required TResult Function(_NewItemEvent_SelecteItem value) selecteItem,
    required TResult Function(_NewItemEvent_Refresh value) refresh,
  }) {
    return selecteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult? Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult? Function(_NewItemEvent_Refresh value)? refresh,
  }) {
    return selecteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult Function(_NewItemEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (selecteItem != null) {
      return selecteItem(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_SelecteItem implements NewItemEvent {
  const factory _NewItemEvent_SelecteItem(
      {required final BuildContext context,
      required final Order order}) = _$_NewItemEvent_SelecteItem;

  BuildContext get context;
  Order get order;
  @JsonKey(ignore: true)
  _$$_NewItemEvent_SelecteItemCopyWith<_$_NewItemEvent_SelecteItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewItemEvent_RefreshCopyWith<$Res> {
  factory _$$_NewItemEvent_RefreshCopyWith(_$_NewItemEvent_Refresh value,
          $Res Function(_$_NewItemEvent_Refresh) then) =
      __$$_NewItemEvent_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewItemEvent_RefreshCopyWithImpl<$Res>
    extends _$NewItemEventCopyWithImpl<$Res, _$_NewItemEvent_Refresh>
    implements _$$_NewItemEvent_RefreshCopyWith<$Res> {
  __$$_NewItemEvent_RefreshCopyWithImpl(_$_NewItemEvent_Refresh _value,
      $Res Function(_$_NewItemEvent_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewItemEvent_Refresh implements _NewItemEvent_Refresh {
  const _$_NewItemEvent_Refresh();

  @override
  String toString() {
    return 'NewItemEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewItemEvent_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int second, Order data) onAccept,
    required TResult Function(Order data) onReject,
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int second, Order data)? onAccept,
    TResult? Function(Order data)? onReject,
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int second, Order data)? onAccept,
    TResult Function(Order data)? onReject,
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewItemEvent_OnAccept value) onAccept,
    required TResult Function(_NewItemEvent_OnReject value) onReject,
    required TResult Function(_NewItemEvent_OnDrawer value) onDrawer,
    required TResult Function(_NewItemEvent_SelecteItem value) selecteItem,
    required TResult Function(_NewItemEvent_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult? Function(_NewItemEvent_OnReject value)? onReject,
    TResult? Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult? Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult? Function(_NewItemEvent_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewItemEvent_OnAccept value)? onAccept,
    TResult Function(_NewItemEvent_OnReject value)? onReject,
    TResult Function(_NewItemEvent_OnDrawer value)? onDrawer,
    TResult Function(_NewItemEvent_SelecteItem value)? selecteItem,
    TResult Function(_NewItemEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _NewItemEvent_Refresh implements NewItemEvent {
  const factory _NewItemEvent_Refresh() = _$_NewItemEvent_Refresh;
}
