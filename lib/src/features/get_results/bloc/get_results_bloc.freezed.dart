// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_results_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetResultsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Map<String, dynamic> data, Map<String, bool> options)
        post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> data, Map<String, bool> options)?
        post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> data, Map<String, bool> options)?
        post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResultsStarted value) started,
    required TResult Function(_GetResultsPost value) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetResultsStarted value)? started,
    TResult? Function(_GetResultsPost value)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResultsStarted value)? started,
    TResult Function(_GetResultsPost value)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetResultsEventCopyWith<$Res> {
  factory $GetResultsEventCopyWith(
          GetResultsEvent value, $Res Function(GetResultsEvent) then) =
      _$GetResultsEventCopyWithImpl<$Res, GetResultsEvent>;
}

/// @nodoc
class _$GetResultsEventCopyWithImpl<$Res, $Val extends GetResultsEvent>
    implements $GetResultsEventCopyWith<$Res> {
  _$GetResultsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetResultsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetResultsStartedImplCopyWith<$Res> {
  factory _$$GetResultsStartedImplCopyWith(_$GetResultsStartedImpl value,
          $Res Function(_$GetResultsStartedImpl) then) =
      __$$GetResultsStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetResultsStartedImplCopyWithImpl<$Res>
    extends _$GetResultsEventCopyWithImpl<$Res, _$GetResultsStartedImpl>
    implements _$$GetResultsStartedImplCopyWith<$Res> {
  __$$GetResultsStartedImplCopyWithImpl(_$GetResultsStartedImpl _value,
      $Res Function(_$GetResultsStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetResultsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetResultsStartedImpl implements _GetResultsStarted {
  const _$GetResultsStartedImpl();

  @override
  String toString() {
    return 'GetResultsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetResultsStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Map<String, dynamic> data, Map<String, bool> options)
        post,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> data, Map<String, bool> options)?
        post,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> data, Map<String, bool> options)?
        post,
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
    required TResult Function(_GetResultsStarted value) started,
    required TResult Function(_GetResultsPost value) post,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetResultsStarted value)? started,
    TResult? Function(_GetResultsPost value)? post,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResultsStarted value)? started,
    TResult Function(_GetResultsPost value)? post,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _GetResultsStarted implements GetResultsEvent {
  const factory _GetResultsStarted() = _$GetResultsStartedImpl;
}

/// @nodoc
abstract class _$$GetResultsPostImplCopyWith<$Res> {
  factory _$$GetResultsPostImplCopyWith(_$GetResultsPostImpl value,
          $Res Function(_$GetResultsPostImpl) then) =
      __$$GetResultsPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data, Map<String, bool> options});
}

/// @nodoc
class __$$GetResultsPostImplCopyWithImpl<$Res>
    extends _$GetResultsEventCopyWithImpl<$Res, _$GetResultsPostImpl>
    implements _$$GetResultsPostImplCopyWith<$Res> {
  __$$GetResultsPostImplCopyWithImpl(
      _$GetResultsPostImpl _value, $Res Function(_$GetResultsPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetResultsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? options = null,
  }) {
    return _then(_$GetResultsPostImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$GetResultsPostImpl implements _GetResultsPost {
  const _$GetResultsPostImpl(
      {required final Map<String, dynamic> data,
      required final Map<String, bool> options})
      : _data = data,
        _options = options;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  final Map<String, bool> _options;
  @override
  Map<String, bool> get options {
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_options);
  }

  @override
  String toString() {
    return 'GetResultsEvent.post(data: $data, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResultsPostImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of GetResultsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResultsPostImplCopyWith<_$GetResultsPostImpl> get copyWith =>
      __$$GetResultsPostImplCopyWithImpl<_$GetResultsPostImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Map<String, dynamic> data, Map<String, bool> options)
        post,
  }) {
    return post(data, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> data, Map<String, bool> options)?
        post,
  }) {
    return post?.call(data, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> data, Map<String, bool> options)?
        post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(data, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResultsStarted value) started,
    required TResult Function(_GetResultsPost value) post,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetResultsStarted value)? started,
    TResult? Function(_GetResultsPost value)? post,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResultsStarted value)? started,
    TResult Function(_GetResultsPost value)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class _GetResultsPost implements GetResultsEvent {
  const factory _GetResultsPost(
      {required final Map<String, dynamic> data,
      required final Map<String, bool> options}) = _$GetResultsPostImpl;

  Map<String, dynamic> get data;
  Map<String, bool> get options;

  /// Create a copy of GetResultsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetResultsPostImplCopyWith<_$GetResultsPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetResultsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ResponseBody> responses) success,
    required TResult Function(String message) error,
    required TResult Function() blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ResponseBody> responses)? success,
    TResult? Function(String message)? error,
    TResult? Function()? blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ResponseBody> responses)? success,
    TResult Function(String message)? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(Blank value)? blank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetResultsStateCopyWith<$Res> {
  factory $GetResultsStateCopyWith(
          GetResultsState value, $Res Function(GetResultsState) then) =
      _$GetResultsStateCopyWithImpl<$Res, GetResultsState>;
}

/// @nodoc
class _$GetResultsStateCopyWithImpl<$Res, $Val extends GetResultsState>
    implements $GetResultsStateCopyWith<$Res> {
  _$GetResultsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GetResultsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GetResultsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ResponseBody> responses) success,
    required TResult Function(String message) error,
    required TResult Function() blank,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ResponseBody> responses)? success,
    TResult? Function(String message)? error,
    TResult? Function()? blank,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ResponseBody> responses)? success,
    TResult Function(String message)? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(Blank value)? blank,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GetResultsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ResponseBody> responses});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GetResultsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responses = null,
  }) {
    return _then(_$SuccessImpl(
      responses: null == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<ResponseBody>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required final List<ResponseBody> responses})
      : _responses = responses;

  final List<ResponseBody> _responses;
  @override
  List<ResponseBody> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  @override
  String toString() {
    return 'GetResultsState.success(responses: $responses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_responses));

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ResponseBody> responses) success,
    required TResult Function(String message) error,
    required TResult Function() blank,
  }) {
    return success(responses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ResponseBody> responses)? success,
    TResult? Function(String message)? error,
    TResult? Function()? blank,
  }) {
    return success?.call(responses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ResponseBody> responses)? success,
    TResult Function(String message)? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(responses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(Blank value)? blank,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements GetResultsState {
  const factory Success({required final List<ResponseBody> responses}) =
      _$SuccessImpl;

  List<ResponseBody> get responses;

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GetResultsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GetResultsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ResponseBody> responses) success,
    required TResult Function(String message) error,
    required TResult Function() blank,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ResponseBody> responses)? success,
    TResult? Function(String message)? error,
    TResult? Function()? blank,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ResponseBody> responses)? success,
    TResult Function(String message)? error,
    TResult Function()? blank,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
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

abstract class Error implements GetResultsState {
  const factory Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlankImplCopyWith<$Res> {
  factory _$$BlankImplCopyWith(
          _$BlankImpl value, $Res Function(_$BlankImpl) then) =
      __$$BlankImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlankImplCopyWithImpl<$Res>
    extends _$GetResultsStateCopyWithImpl<$Res, _$BlankImpl>
    implements _$$BlankImplCopyWith<$Res> {
  __$$BlankImplCopyWithImpl(
      _$BlankImpl _value, $Res Function(_$BlankImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetResultsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlankImpl implements Blank {
  const _$BlankImpl();

  @override
  String toString() {
    return 'GetResultsState.blank()';
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
    required TResult Function() loading,
    required TResult Function(List<ResponseBody> responses) success,
    required TResult Function(String message) error,
    required TResult Function() blank,
  }) {
    return blank();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ResponseBody> responses)? success,
    TResult? Function(String message)? error,
    TResult? Function()? blank,
  }) {
    return blank?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ResponseBody> responses)? success,
    TResult Function(String message)? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(Blank value) blank,
  }) {
    return blank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(Blank value)? blank,
  }) {
    return blank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
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

abstract class Blank implements GetResultsState {
  const factory Blank() = _$BlankImpl;
}
