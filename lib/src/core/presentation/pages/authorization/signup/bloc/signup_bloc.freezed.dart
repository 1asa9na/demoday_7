// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupStarted value) started,
    required TResult Function(_SignupSignup value) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupStarted value)? started,
    TResult? Function(_SignupSignup value)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupStarted value)? started,
    TResult Function(_SignupSignup value)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignupStartedImplCopyWith<$Res> {
  factory _$$SignupStartedImplCopyWith(
          _$SignupStartedImpl value, $Res Function(_$SignupStartedImpl) then) =
      __$$SignupStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupStartedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SignupStartedImpl>
    implements _$$SignupStartedImplCopyWith<$Res> {
  __$$SignupStartedImplCopyWithImpl(
      _$SignupStartedImpl _value, $Res Function(_$SignupStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupStartedImpl implements _SignupStarted {
  const _$SignupStartedImpl();

  @override
  String toString() {
    return 'SignupEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) signup,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? signup,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? signup,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupStarted value) started,
    required TResult Function(_SignupSignup value) signup,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupStarted value)? started,
    TResult? Function(_SignupSignup value)? signup,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupStarted value)? started,
    TResult Function(_SignupSignup value)? signup,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _SignupStarted implements SignupEvent {
  const factory _SignupStarted() = _$SignupStartedImpl;
}

/// @nodoc
abstract class _$$SignupSignupImplCopyWith<$Res> {
  factory _$$SignupSignupImplCopyWith(
          _$SignupSignupImpl value, $Res Function(_$SignupSignupImpl) then) =
      __$$SignupSignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignupSignupImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SignupSignupImpl>
    implements _$$SignupSignupImplCopyWith<$Res> {
  __$$SignupSignupImplCopyWithImpl(
      _$SignupSignupImpl _value, $Res Function(_$SignupSignupImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupSignupImpl(
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

class _$SignupSignupImpl implements _SignupSignup {
  const _$SignupSignupImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupEvent.signup(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSignupImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSignupImplCopyWith<_$SignupSignupImpl> get copyWith =>
      __$$SignupSignupImplCopyWithImpl<_$SignupSignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) signup,
  }) {
    return signup(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? signup,
  }) {
    return signup?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupStarted value) started,
    required TResult Function(_SignupSignup value) signup,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupStarted value)? started,
    TResult? Function(_SignupSignup value)? signup,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupStarted value)? started,
    TResult Function(_SignupSignup value)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _SignupSignup implements SignupEvent {
  const factory _SignupSignup(
      {required final String email,
      required final String password}) = _$SignupSignupImpl;

  String get email;
  String get password;

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupSignupImplCopyWith<_$SignupSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signupSuccess,
    required TResult Function() error,
    required TResult Function() blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signupSuccess,
    TResult? Function()? error,
    TResult? Function()? blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signupSuccess,
    TResult Function()? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(Error value)? error,
    TResult Function(Blank value)? blank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<$Res> {
  factory _$$SignupSuccessImplCopyWith(
          _$SignupSuccessImpl value, $Res Function(_$SignupSuccessImpl) then) =
      __$$SignupSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupSuccessImpl>
    implements _$$SignupSuccessImplCopyWith<$Res> {
  __$$SignupSuccessImplCopyWithImpl(
      _$SignupSuccessImpl _value, $Res Function(_$SignupSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignupSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupSuccessImpl implements SignupSuccess {
  const _$SignupSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SignupState.signupSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      __$$SignupSuccessImplCopyWithImpl<_$SignupSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signupSuccess,
    required TResult Function() error,
    required TResult Function() blank,
  }) {
    return signupSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signupSuccess,
    TResult? Function()? error,
    TResult? Function()? blank,
  }) {
    return signupSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signupSuccess,
    TResult Function()? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(Error value)? error,
    TResult Function(Blank value)? blank,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess implements SignupState {
  const factory SignupSuccess({required final String message}) =
      _$SignupSuccessImpl;

  String get message;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'SignupState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signupSuccess,
    required TResult Function() error,
    required TResult Function() blank,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signupSuccess,
    TResult? Function()? error,
    TResult? Function()? blank,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signupSuccess,
    TResult Function()? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(Error value)? error,
    TResult Function(Blank value)? blank,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SignupState {
  const factory Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$BlankImplCopyWith<$Res> {
  factory _$$BlankImplCopyWith(
          _$BlankImpl value, $Res Function(_$BlankImpl) then) =
      __$$BlankImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlankImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$BlankImpl>
    implements _$$BlankImplCopyWith<$Res> {
  __$$BlankImplCopyWithImpl(
      _$BlankImpl _value, $Res Function(_$BlankImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlankImpl implements Blank {
  const _$BlankImpl();

  @override
  String toString() {
    return 'SignupState.blank()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlankImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signupSuccess,
    required TResult Function() error,
    required TResult Function() blank,
  }) {
    return blank();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signupSuccess,
    TResult? Function()? error,
    TResult? Function()? blank,
  }) {
    return blank?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signupSuccess,
    TResult Function()? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) {
    if (blank != null) {
      return blank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) {
    return blank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) {
    return blank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(Error value)? error,
    TResult Function(Blank value)? blank,
    required TResult orElse(),
  }) {
    if (blank != null) {
      return blank(this);
    }
    return orElse();
  }
}

abstract class Blank implements SignupState {
  const factory Blank() = _$BlankImpl;
}
