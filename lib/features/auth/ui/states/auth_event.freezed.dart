// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithPasswordAndEmail,
    required TResult Function() logout,
    required TResult Function(String email, String password) registerWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() goToRegisterScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithPasswordAndEmail,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? registerWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? goToRegisterScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithPasswordAndEmail,
    TResult Function()? logout,
    TResult Function(String email, String password)? registerWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? goToRegisterScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEvent_IsLogginIn value) loginWithPasswordAndEmail,
    required TResult Function(_AuthEvent_LogginOut value) logout,
    required TResult Function(_AuthEvent_RegisterWithEmailAndPassword value) registerWithEmailAndPassword,
    required TResult Function(_AuthEvent_ResetPassword value) resetPassword,
    required TResult Function(_AuthEvent_GoToRegisterScreen value) goToRegisterScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult? Function(_AuthEvent_LogginOut value)? logout,
    TResult? Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult? Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult? Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult Function(_AuthEvent_LogginOut value)? logout,
    TResult Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) = _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthEvent_IsLogginInCopyWith<$Res> {
  factory _$$_AuthEvent_IsLogginInCopyWith(_$_AuthEvent_IsLogginIn value, $Res Function(_$_AuthEvent_IsLogginIn) then) = __$$_AuthEvent_IsLogginInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthEvent_IsLogginInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$_AuthEvent_IsLogginIn> implements _$$_AuthEvent_IsLogginInCopyWith<$Res> {
  __$$_AuthEvent_IsLogginInCopyWithImpl(_$_AuthEvent_IsLogginIn _value, $Res Function(_$_AuthEvent_IsLogginIn) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthEvent_IsLogginIn(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEvent_IsLogginIn implements _AuthEvent_IsLogginIn {
  const _$_AuthEvent_IsLogginIn({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithPasswordAndEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEvent_IsLogginIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEvent_IsLogginInCopyWith<_$_AuthEvent_IsLogginIn> get copyWith => __$$_AuthEvent_IsLogginInCopyWithImpl<_$_AuthEvent_IsLogginIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithPasswordAndEmail,
    required TResult Function() logout,
    required TResult Function(String email, String password) registerWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() goToRegisterScreen,
  }) {
    return loginWithPasswordAndEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithPasswordAndEmail,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? registerWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? goToRegisterScreen,
  }) {
    return loginWithPasswordAndEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithPasswordAndEmail,
    TResult Function()? logout,
    TResult Function(String email, String password)? registerWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (loginWithPasswordAndEmail != null) {
      return loginWithPasswordAndEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEvent_IsLogginIn value) loginWithPasswordAndEmail,
    required TResult Function(_AuthEvent_LogginOut value) logout,
    required TResult Function(_AuthEvent_RegisterWithEmailAndPassword value) registerWithEmailAndPassword,
    required TResult Function(_AuthEvent_ResetPassword value) resetPassword,
    required TResult Function(_AuthEvent_GoToRegisterScreen value) goToRegisterScreen,
  }) {
    return loginWithPasswordAndEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult? Function(_AuthEvent_LogginOut value)? logout,
    TResult? Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult? Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult? Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
  }) {
    return loginWithPasswordAndEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult Function(_AuthEvent_LogginOut value)? logout,
    TResult Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (loginWithPasswordAndEmail != null) {
      return loginWithPasswordAndEmail(this);
    }
    return orElse();
  }
}

abstract class _AuthEvent_IsLogginIn implements AuthEvent {
  const factory _AuthEvent_IsLogginIn({required final String email, required final String password}) = _$_AuthEvent_IsLogginIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthEvent_IsLogginInCopyWith<_$_AuthEvent_IsLogginIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEvent_LogginOutCopyWith<$Res> {
  factory _$$_AuthEvent_LogginOutCopyWith(_$_AuthEvent_LogginOut value, $Res Function(_$_AuthEvent_LogginOut) then) = __$$_AuthEvent_LogginOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEvent_LogginOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$_AuthEvent_LogginOut> implements _$$_AuthEvent_LogginOutCopyWith<$Res> {
  __$$_AuthEvent_LogginOutCopyWithImpl(_$_AuthEvent_LogginOut _value, $Res Function(_$_AuthEvent_LogginOut) _then) : super(_value, _then);
}

/// @nodoc

class _$_AuthEvent_LogginOut implements _AuthEvent_LogginOut {
  const _$_AuthEvent_LogginOut();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AuthEvent_LogginOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithPasswordAndEmail,
    required TResult Function() logout,
    required TResult Function(String email, String password) registerWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() goToRegisterScreen,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithPasswordAndEmail,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? registerWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? goToRegisterScreen,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithPasswordAndEmail,
    TResult Function()? logout,
    TResult Function(String email, String password)? registerWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEvent_IsLogginIn value) loginWithPasswordAndEmail,
    required TResult Function(_AuthEvent_LogginOut value) logout,
    required TResult Function(_AuthEvent_RegisterWithEmailAndPassword value) registerWithEmailAndPassword,
    required TResult Function(_AuthEvent_ResetPassword value) resetPassword,
    required TResult Function(_AuthEvent_GoToRegisterScreen value) goToRegisterScreen,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult? Function(_AuthEvent_LogginOut value)? logout,
    TResult? Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult? Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult? Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult Function(_AuthEvent_LogginOut value)? logout,
    TResult Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthEvent_LogginOut implements AuthEvent {
  const factory _AuthEvent_LogginOut() = _$_AuthEvent_LogginOut;
}

/// @nodoc
abstract class _$$_AuthEvent_RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_AuthEvent_RegisterWithEmailAndPasswordCopyWith(_$_AuthEvent_RegisterWithEmailAndPassword value, $Res Function(_$_AuthEvent_RegisterWithEmailAndPassword) then) =
      __$$_AuthEvent_RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthEvent_RegisterWithEmailAndPasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$_AuthEvent_RegisterWithEmailAndPassword>
    implements _$$_AuthEvent_RegisterWithEmailAndPasswordCopyWith<$Res> {
  __$$_AuthEvent_RegisterWithEmailAndPasswordCopyWithImpl(_$_AuthEvent_RegisterWithEmailAndPassword _value, $Res Function(_$_AuthEvent_RegisterWithEmailAndPassword) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthEvent_RegisterWithEmailAndPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEvent_RegisterWithEmailAndPassword implements _AuthEvent_RegisterWithEmailAndPassword {
  const _$_AuthEvent_RegisterWithEmailAndPassword({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEvent_RegisterWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEvent_RegisterWithEmailAndPasswordCopyWith<_$_AuthEvent_RegisterWithEmailAndPassword> get copyWith =>
      __$$_AuthEvent_RegisterWithEmailAndPasswordCopyWithImpl<_$_AuthEvent_RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithPasswordAndEmail,
    required TResult Function() logout,
    required TResult Function(String email, String password) registerWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() goToRegisterScreen,
  }) {
    return registerWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithPasswordAndEmail,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? registerWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? goToRegisterScreen,
  }) {
    return registerWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithPasswordAndEmail,
    TResult Function()? logout,
    TResult Function(String email, String password)? registerWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEvent_IsLogginIn value) loginWithPasswordAndEmail,
    required TResult Function(_AuthEvent_LogginOut value) logout,
    required TResult Function(_AuthEvent_RegisterWithEmailAndPassword value) registerWithEmailAndPassword,
    required TResult Function(_AuthEvent_ResetPassword value) resetPassword,
    required TResult Function(_AuthEvent_GoToRegisterScreen value) goToRegisterScreen,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult? Function(_AuthEvent_LogginOut value)? logout,
    TResult? Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult? Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult? Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult Function(_AuthEvent_LogginOut value)? logout,
    TResult Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _AuthEvent_RegisterWithEmailAndPassword implements AuthEvent {
  const factory _AuthEvent_RegisterWithEmailAndPassword({required final String email, required final String password}) = _$_AuthEvent_RegisterWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthEvent_RegisterWithEmailAndPasswordCopyWith<_$_AuthEvent_RegisterWithEmailAndPassword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEvent_ResetPasswordCopyWith<$Res> {
  factory _$$_AuthEvent_ResetPasswordCopyWith(_$_AuthEvent_ResetPassword value, $Res Function(_$_AuthEvent_ResetPassword) then) = __$$_AuthEvent_ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_AuthEvent_ResetPasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$_AuthEvent_ResetPassword> implements _$$_AuthEvent_ResetPasswordCopyWith<$Res> {
  __$$_AuthEvent_ResetPasswordCopyWithImpl(_$_AuthEvent_ResetPassword _value, $Res Function(_$_AuthEvent_ResetPassword) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_AuthEvent_ResetPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEvent_ResetPassword implements _AuthEvent_ResetPassword {
  const _$_AuthEvent_ResetPassword({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AuthEvent_ResetPassword && (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEvent_ResetPasswordCopyWith<_$_AuthEvent_ResetPassword> get copyWith => __$$_AuthEvent_ResetPasswordCopyWithImpl<_$_AuthEvent_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithPasswordAndEmail,
    required TResult Function() logout,
    required TResult Function(String email, String password) registerWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() goToRegisterScreen,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithPasswordAndEmail,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? registerWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? goToRegisterScreen,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithPasswordAndEmail,
    TResult Function()? logout,
    TResult Function(String email, String password)? registerWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEvent_IsLogginIn value) loginWithPasswordAndEmail,
    required TResult Function(_AuthEvent_LogginOut value) logout,
    required TResult Function(_AuthEvent_RegisterWithEmailAndPassword value) registerWithEmailAndPassword,
    required TResult Function(_AuthEvent_ResetPassword value) resetPassword,
    required TResult Function(_AuthEvent_GoToRegisterScreen value) goToRegisterScreen,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult? Function(_AuthEvent_LogginOut value)? logout,
    TResult? Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult? Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult? Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult Function(_AuthEvent_LogginOut value)? logout,
    TResult Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _AuthEvent_ResetPassword implements AuthEvent {
  const factory _AuthEvent_ResetPassword({required final String email}) = _$_AuthEvent_ResetPassword;

  String get email;
  @JsonKey(ignore: true)
  _$$_AuthEvent_ResetPasswordCopyWith<_$_AuthEvent_ResetPassword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEvent_GoToRegisterScreenCopyWith<$Res> {
  factory _$$_AuthEvent_GoToRegisterScreenCopyWith(_$_AuthEvent_GoToRegisterScreen value, $Res Function(_$_AuthEvent_GoToRegisterScreen) then) = __$$_AuthEvent_GoToRegisterScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEvent_GoToRegisterScreenCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$_AuthEvent_GoToRegisterScreen> implements _$$_AuthEvent_GoToRegisterScreenCopyWith<$Res> {
  __$$_AuthEvent_GoToRegisterScreenCopyWithImpl(_$_AuthEvent_GoToRegisterScreen _value, $Res Function(_$_AuthEvent_GoToRegisterScreen) _then) : super(_value, _then);
}

/// @nodoc

class _$_AuthEvent_GoToRegisterScreen implements _AuthEvent_GoToRegisterScreen {
  const _$_AuthEvent_GoToRegisterScreen();

  @override
  String toString() {
    return 'AuthEvent.goToRegisterScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AuthEvent_GoToRegisterScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithPasswordAndEmail,
    required TResult Function() logout,
    required TResult Function(String email, String password) registerWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() goToRegisterScreen,
  }) {
    return goToRegisterScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithPasswordAndEmail,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? registerWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? goToRegisterScreen,
  }) {
    return goToRegisterScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithPasswordAndEmail,
    TResult Function()? logout,
    TResult Function(String email, String password)? registerWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (goToRegisterScreen != null) {
      return goToRegisterScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEvent_IsLogginIn value) loginWithPasswordAndEmail,
    required TResult Function(_AuthEvent_LogginOut value) logout,
    required TResult Function(_AuthEvent_RegisterWithEmailAndPassword value) registerWithEmailAndPassword,
    required TResult Function(_AuthEvent_ResetPassword value) resetPassword,
    required TResult Function(_AuthEvent_GoToRegisterScreen value) goToRegisterScreen,
  }) {
    return goToRegisterScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult? Function(_AuthEvent_LogginOut value)? logout,
    TResult? Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult? Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult? Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
  }) {
    return goToRegisterScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEvent_IsLogginIn value)? loginWithPasswordAndEmail,
    TResult Function(_AuthEvent_LogginOut value)? logout,
    TResult Function(_AuthEvent_RegisterWithEmailAndPassword value)? registerWithEmailAndPassword,
    TResult Function(_AuthEvent_ResetPassword value)? resetPassword,
    TResult Function(_AuthEvent_GoToRegisterScreen value)? goToRegisterScreen,
    required TResult orElse(),
  }) {
    if (goToRegisterScreen != null) {
      return goToRegisterScreen(this);
    }
    return orElse();
  }
}

abstract class _AuthEvent_GoToRegisterScreen implements AuthEvent {
  const factory _AuthEvent_GoToRegisterScreen() = _$_AuthEvent_GoToRegisterScreen;
}
