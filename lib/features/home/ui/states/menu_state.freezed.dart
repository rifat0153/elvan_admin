// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuState {
  bool get isOpenMenu => throw _privateConstructorUsedError;
  double get xOffset => throw _privateConstructorUsedError;
  double get yOffset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call({bool isOpenMenu, double xOffset, double yOffset});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenMenu = null,
    Object? xOffset = null,
    Object? yOffset = null,
  }) {
    return _then(_value.copyWith(
      isOpenMenu: null == isOpenMenu
          ? _value.isOpenMenu
          : isOpenMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      xOffset: null == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double,
      yOffset: null == yOffset
          ? _value.yOffset
          : yOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$$_MenuStateCopyWith(
          _$_MenuState value, $Res Function(_$_MenuState) then) =
      __$$_MenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOpenMenu, double xOffset, double yOffset});
}

/// @nodoc
class __$$_MenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_MenuState>
    implements _$$_MenuStateCopyWith<$Res> {
  __$$_MenuStateCopyWithImpl(
      _$_MenuState _value, $Res Function(_$_MenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenMenu = null,
    Object? xOffset = null,
    Object? yOffset = null,
  }) {
    return _then(_$_MenuState(
      isOpenMenu: null == isOpenMenu
          ? _value.isOpenMenu
          : isOpenMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      xOffset: null == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double,
      yOffset: null == yOffset
          ? _value.yOffset
          : yOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MenuState implements _MenuState {
  const _$_MenuState(
      {this.isOpenMenu = false, this.xOffset = 0, this.yOffset = 0});

  @override
  @JsonKey()
  final bool isOpenMenu;
  @override
  @JsonKey()
  final double xOffset;
  @override
  @JsonKey()
  final double yOffset;

  @override
  String toString() {
    return 'MenuState(isOpenMenu: $isOpenMenu, xOffset: $xOffset, yOffset: $yOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuState &&
            (identical(other.isOpenMenu, isOpenMenu) ||
                other.isOpenMenu == isOpenMenu) &&
            (identical(other.xOffset, xOffset) || other.xOffset == xOffset) &&
            (identical(other.yOffset, yOffset) || other.yOffset == yOffset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOpenMenu, xOffset, yOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      __$$_MenuStateCopyWithImpl<_$_MenuState>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState(
      {final bool isOpenMenu,
      final double xOffset,
      final double yOffset}) = _$_MenuState;

  @override
  bool get isOpenMenu;
  @override
  double get xOffset;
  @override
  double get yOffset;
  @override
  @JsonKey(ignore: true)
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
