// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UIEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function(BuildContext context, Order order) onChangeStatus,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function(BuildContext context, Order order)? onChangeStatus,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function(BuildContext context, Order order)? onChangeStatus,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UIEvent_OnDrawer value) onDrawer,
    required TResult Function(_UIEvent_SelecteItem value) selecteItem,
    required TResult Function(_UIEvent_OnChangeStatus value) onChangeStatus,
    required TResult Function(_UIEvent_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult? Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult? Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult? Function(_UIEvent_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult Function(_UIEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIEventCopyWith<$Res> {
  factory $UIEventCopyWith(UIEvent value, $Res Function(UIEvent) then) = _$UIEventCopyWithImpl<$Res, UIEvent>;
}

/// @nodoc
class _$UIEventCopyWithImpl<$Res, $Val extends UIEvent> implements $UIEventCopyWith<$Res> {
  _$UIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UIEvent_OnDrawerCopyWith<$Res> {
  factory _$$_UIEvent_OnDrawerCopyWith(_$_UIEvent_OnDrawer value, $Res Function(_$_UIEvent_OnDrawer) then) = __$$_UIEvent_OnDrawerCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_UIEvent_OnDrawerCopyWithImpl<$Res> extends _$UIEventCopyWithImpl<$Res, _$_UIEvent_OnDrawer> implements _$$_UIEvent_OnDrawerCopyWith<$Res> {
  __$$_UIEvent_OnDrawerCopyWithImpl(_$_UIEvent_OnDrawer _value, $Res Function(_$_UIEvent_OnDrawer) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_UIEvent_OnDrawer(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_UIEvent_OnDrawer with DiagnosticableTreeMixin implements _UIEvent_OnDrawer {
  const _$_UIEvent_OnDrawer({required this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UIEvent.onDrawer(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UIEvent.onDrawer'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_UIEvent_OnDrawer && (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UIEvent_OnDrawerCopyWith<_$_UIEvent_OnDrawer> get copyWith => __$$_UIEvent_OnDrawerCopyWithImpl<_$_UIEvent_OnDrawer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function(BuildContext context, Order order) onChangeStatus,
    required TResult Function() refresh,
  }) {
    return onDrawer(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function(BuildContext context, Order order)? onChangeStatus,
    TResult? Function()? refresh,
  }) {
    return onDrawer?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function(BuildContext context, Order order)? onChangeStatus,
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
    required TResult Function(_UIEvent_OnDrawer value) onDrawer,
    required TResult Function(_UIEvent_SelecteItem value) selecteItem,
    required TResult Function(_UIEvent_OnChangeStatus value) onChangeStatus,
    required TResult Function(_UIEvent_Refresh value) refresh,
  }) {
    return onDrawer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult? Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult? Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult? Function(_UIEvent_Refresh value)? refresh,
  }) {
    return onDrawer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult Function(_UIEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (onDrawer != null) {
      return onDrawer(this);
    }
    return orElse();
  }
}

abstract class _UIEvent_OnDrawer implements UIEvent {
  const factory _UIEvent_OnDrawer({required final BuildContext context}) = _$_UIEvent_OnDrawer;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_UIEvent_OnDrawerCopyWith<_$_UIEvent_OnDrawer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UIEvent_SelecteItemCopyWith<$Res> {
  factory _$$_UIEvent_SelecteItemCopyWith(_$_UIEvent_SelecteItem value, $Res Function(_$_UIEvent_SelecteItem) then) = __$$_UIEvent_SelecteItemCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_UIEvent_SelecteItemCopyWithImpl<$Res> extends _$UIEventCopyWithImpl<$Res, _$_UIEvent_SelecteItem> implements _$$_UIEvent_SelecteItemCopyWith<$Res> {
  __$$_UIEvent_SelecteItemCopyWithImpl(_$_UIEvent_SelecteItem _value, $Res Function(_$_UIEvent_SelecteItem) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? order = null,
  }) {
    return _then(_$_UIEvent_SelecteItem(
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

class _$_UIEvent_SelecteItem with DiagnosticableTreeMixin implements _UIEvent_SelecteItem {
  const _$_UIEvent_SelecteItem({required this.context, required this.order});

  @override
  final BuildContext context;
  @override
  final Order order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UIEvent.selecteItem(context: $context, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UIEvent.selecteItem'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UIEvent_SelecteItem &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UIEvent_SelecteItemCopyWith<_$_UIEvent_SelecteItem> get copyWith => __$$_UIEvent_SelecteItemCopyWithImpl<_$_UIEvent_SelecteItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function(BuildContext context, Order order) onChangeStatus,
    required TResult Function() refresh,
  }) {
    return selecteItem(context, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function(BuildContext context, Order order)? onChangeStatus,
    TResult? Function()? refresh,
  }) {
    return selecteItem?.call(context, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function(BuildContext context, Order order)? onChangeStatus,
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
    required TResult Function(_UIEvent_OnDrawer value) onDrawer,
    required TResult Function(_UIEvent_SelecteItem value) selecteItem,
    required TResult Function(_UIEvent_OnChangeStatus value) onChangeStatus,
    required TResult Function(_UIEvent_Refresh value) refresh,
  }) {
    return selecteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult? Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult? Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult? Function(_UIEvent_Refresh value)? refresh,
  }) {
    return selecteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult Function(_UIEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (selecteItem != null) {
      return selecteItem(this);
    }
    return orElse();
  }
}

abstract class _UIEvent_SelecteItem implements UIEvent {
  const factory _UIEvent_SelecteItem({required final BuildContext context, required final Order order}) = _$_UIEvent_SelecteItem;

  BuildContext get context;
  Order get order;
  @JsonKey(ignore: true)
  _$$_UIEvent_SelecteItemCopyWith<_$_UIEvent_SelecteItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UIEvent_OnChangeStatusCopyWith<$Res> {
  factory _$$_UIEvent_OnChangeStatusCopyWith(_$_UIEvent_OnChangeStatus value, $Res Function(_$_UIEvent_OnChangeStatus) then) = __$$_UIEvent_OnChangeStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_UIEvent_OnChangeStatusCopyWithImpl<$Res> extends _$UIEventCopyWithImpl<$Res, _$_UIEvent_OnChangeStatus> implements _$$_UIEvent_OnChangeStatusCopyWith<$Res> {
  __$$_UIEvent_OnChangeStatusCopyWithImpl(_$_UIEvent_OnChangeStatus _value, $Res Function(_$_UIEvent_OnChangeStatus) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? order = null,
  }) {
    return _then(_$_UIEvent_OnChangeStatus(
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

class _$_UIEvent_OnChangeStatus with DiagnosticableTreeMixin implements _UIEvent_OnChangeStatus {
  const _$_UIEvent_OnChangeStatus({required this.context, required this.order});

  @override
  final BuildContext context;
  @override
  final Order order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UIEvent.onChangeStatus(context: $context, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UIEvent.onChangeStatus'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UIEvent_OnChangeStatus &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UIEvent_OnChangeStatusCopyWith<_$_UIEvent_OnChangeStatus> get copyWith => __$$_UIEvent_OnChangeStatusCopyWithImpl<_$_UIEvent_OnChangeStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function(BuildContext context, Order order) onChangeStatus,
    required TResult Function() refresh,
  }) {
    return onChangeStatus(context, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function(BuildContext context, Order order)? onChangeStatus,
    TResult? Function()? refresh,
  }) {
    return onChangeStatus?.call(context, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function(BuildContext context, Order order)? onChangeStatus,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (onChangeStatus != null) {
      return onChangeStatus(context, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UIEvent_OnDrawer value) onDrawer,
    required TResult Function(_UIEvent_SelecteItem value) selecteItem,
    required TResult Function(_UIEvent_OnChangeStatus value) onChangeStatus,
    required TResult Function(_UIEvent_Refresh value) refresh,
  }) {
    return onChangeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult? Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult? Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult? Function(_UIEvent_Refresh value)? refresh,
  }) {
    return onChangeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult Function(_UIEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (onChangeStatus != null) {
      return onChangeStatus(this);
    }
    return orElse();
  }
}

abstract class _UIEvent_OnChangeStatus implements UIEvent {
  const factory _UIEvent_OnChangeStatus({required final BuildContext context, required final Order order}) = _$_UIEvent_OnChangeStatus;

  BuildContext get context;
  Order get order;
  @JsonKey(ignore: true)
  _$$_UIEvent_OnChangeStatusCopyWith<_$_UIEvent_OnChangeStatus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UIEvent_RefreshCopyWith<$Res> {
  factory _$$_UIEvent_RefreshCopyWith(_$_UIEvent_Refresh value, $Res Function(_$_UIEvent_Refresh) then) = __$$_UIEvent_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UIEvent_RefreshCopyWithImpl<$Res> extends _$UIEventCopyWithImpl<$Res, _$_UIEvent_Refresh> implements _$$_UIEvent_RefreshCopyWith<$Res> {
  __$$_UIEvent_RefreshCopyWithImpl(_$_UIEvent_Refresh _value, $Res Function(_$_UIEvent_Refresh) _then) : super(_value, _then);
}

/// @nodoc

class _$_UIEvent_Refresh with DiagnosticableTreeMixin implements _UIEvent_Refresh {
  const _$_UIEvent_Refresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UIEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UIEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_UIEvent_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onDrawer,
    required TResult Function(BuildContext context, Order order) selecteItem,
    required TResult Function(BuildContext context, Order order) onChangeStatus,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onDrawer,
    TResult? Function(BuildContext context, Order order)? selecteItem,
    TResult? Function(BuildContext context, Order order)? onChangeStatus,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onDrawer,
    TResult Function(BuildContext context, Order order)? selecteItem,
    TResult Function(BuildContext context, Order order)? onChangeStatus,
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
    required TResult Function(_UIEvent_OnDrawer value) onDrawer,
    required TResult Function(_UIEvent_SelecteItem value) selecteItem,
    required TResult Function(_UIEvent_OnChangeStatus value) onChangeStatus,
    required TResult Function(_UIEvent_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult? Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult? Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult? Function(_UIEvent_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIEvent_OnDrawer value)? onDrawer,
    TResult Function(_UIEvent_SelecteItem value)? selecteItem,
    TResult Function(_UIEvent_OnChangeStatus value)? onChangeStatus,
    TResult Function(_UIEvent_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _UIEvent_Refresh implements UIEvent {
  const factory _UIEvent_Refresh() = _$_UIEvent_Refresh;
}
