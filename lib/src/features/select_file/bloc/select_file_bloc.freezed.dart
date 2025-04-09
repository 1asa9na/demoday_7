// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectFileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectFileStarted value) started,
    required TResult Function(_SelectFilePickImage value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectFileStarted value)? started,
    TResult? Function(_SelectFilePickImage value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectFileStarted value)? started,
    TResult Function(_SelectFilePickImage value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectFileEventCopyWith<$Res> {
  factory $SelectFileEventCopyWith(
          SelectFileEvent value, $Res Function(SelectFileEvent) then) =
      _$SelectFileEventCopyWithImpl<$Res, SelectFileEvent>;
}

/// @nodoc
class _$SelectFileEventCopyWithImpl<$Res, $Val extends SelectFileEvent>
    implements $SelectFileEventCopyWith<$Res> {
  _$SelectFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectFileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectFileStartedImplCopyWith<$Res> {
  factory _$$SelectFileStartedImplCopyWith(_$SelectFileStartedImpl value,
          $Res Function(_$SelectFileStartedImpl) then) =
      __$$SelectFileStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectFileStartedImplCopyWithImpl<$Res>
    extends _$SelectFileEventCopyWithImpl<$Res, _$SelectFileStartedImpl>
    implements _$$SelectFileStartedImplCopyWith<$Res> {
  __$$SelectFileStartedImplCopyWithImpl(_$SelectFileStartedImpl _value,
      $Res Function(_$SelectFileStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectFileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectFileStartedImpl implements _SelectFileStarted {
  const _$SelectFileStartedImpl();

  @override
  String toString() {
    return 'SelectFileEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectFileStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pickImage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pickImage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pickImage,
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
    required TResult Function(_SelectFileStarted value) started,
    required TResult Function(_SelectFilePickImage value) pickImage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectFileStarted value)? started,
    TResult? Function(_SelectFilePickImage value)? pickImage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectFileStarted value)? started,
    TResult Function(_SelectFilePickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _SelectFileStarted implements SelectFileEvent {
  const factory _SelectFileStarted() = _$SelectFileStartedImpl;
}

/// @nodoc
abstract class _$$SelectFilePickImageImplCopyWith<$Res> {
  factory _$$SelectFilePickImageImplCopyWith(_$SelectFilePickImageImpl value,
          $Res Function(_$SelectFilePickImageImpl) then) =
      __$$SelectFilePickImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectFilePickImageImplCopyWithImpl<$Res>
    extends _$SelectFileEventCopyWithImpl<$Res, _$SelectFilePickImageImpl>
    implements _$$SelectFilePickImageImplCopyWith<$Res> {
  __$$SelectFilePickImageImplCopyWithImpl(_$SelectFilePickImageImpl _value,
      $Res Function(_$SelectFilePickImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectFileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectFilePickImageImpl implements _SelectFilePickImage {
  const _$SelectFilePickImageImpl();

  @override
  String toString() {
    return 'SelectFileEvent.pickImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFilePickImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pickImage,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pickImage,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectFileStarted value) started,
    required TResult Function(_SelectFilePickImage value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectFileStarted value)? started,
    TResult? Function(_SelectFilePickImage value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectFileStarted value)? started,
    TResult Function(_SelectFilePickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _SelectFilePickImage implements SelectFileEvent {
  const factory _SelectFilePickImage() = _$SelectFilePickImageImpl;
}

/// @nodoc
mixin _$SelectFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Uint8List pickedImageBytes) success,
    required TResult Function() noImageSelected,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List pickedImageBytes)? success,
    TResult? Function()? noImageSelected,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List pickedImageBytes)? success,
    TResult Function()? noImageSelected,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(NoImageSelected value) noImageSelected,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(NoImageSelected value)? noImageSelected,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(NoImageSelected value)? noImageSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectFileStateCopyWith<$Res> {
  factory $SelectFileStateCopyWith(
          SelectFileState value, $Res Function(SelectFileState) then) =
      _$SelectFileStateCopyWithImpl<$Res, SelectFileState>;
}

/// @nodoc
class _$SelectFileStateCopyWithImpl<$Res, $Val extends SelectFileState>
    implements $SelectFileStateCopyWith<$Res> {
  _$SelectFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectFileState
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
    extends _$SelectFileStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectFileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SelectFileState.loading()';
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
    required TResult Function(Uint8List pickedImageBytes) success,
    required TResult Function() noImageSelected,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List pickedImageBytes)? success,
    TResult? Function()? noImageSelected,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List pickedImageBytes)? success,
    TResult Function()? noImageSelected,
    TResult Function()? error,
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
    required TResult Function(NoImageSelected value) noImageSelected,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(NoImageSelected value)? noImageSelected,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(NoImageSelected value)? noImageSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SelectFileState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List pickedImageBytes});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SelectFileStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImageBytes = null,
  }) {
    return _then(_$SuccessImpl(
      pickedImageBytes: null == pickedImageBytes
          ? _value.pickedImageBytes
          : pickedImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.pickedImageBytes});

  @override
  final Uint8List pickedImageBytes;

  @override
  String toString() {
    return 'SelectFileState.success(pickedImageBytes: $pickedImageBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other.pickedImageBytes, pickedImageBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pickedImageBytes));

  /// Create a copy of SelectFileState
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
    required TResult Function(Uint8List pickedImageBytes) success,
    required TResult Function() noImageSelected,
    required TResult Function() error,
  }) {
    return success(pickedImageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List pickedImageBytes)? success,
    TResult? Function()? noImageSelected,
    TResult? Function()? error,
  }) {
    return success?.call(pickedImageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List pickedImageBytes)? success,
    TResult Function()? noImageSelected,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pickedImageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(NoImageSelected value) noImageSelected,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(NoImageSelected value)? noImageSelected,
    TResult? Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(NoImageSelected value)? noImageSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SelectFileState {
  const factory Success({required final Uint8List pickedImageBytes}) =
      _$SuccessImpl;

  Uint8List get pickedImageBytes;

  /// Create a copy of SelectFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoImageSelectedImplCopyWith<$Res> {
  factory _$$NoImageSelectedImplCopyWith(_$NoImageSelectedImpl value,
          $Res Function(_$NoImageSelectedImpl) then) =
      __$$NoImageSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoImageSelectedImplCopyWithImpl<$Res>
    extends _$SelectFileStateCopyWithImpl<$Res, _$NoImageSelectedImpl>
    implements _$$NoImageSelectedImplCopyWith<$Res> {
  __$$NoImageSelectedImplCopyWithImpl(
      _$NoImageSelectedImpl _value, $Res Function(_$NoImageSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectFileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoImageSelectedImpl implements NoImageSelected {
  const _$NoImageSelectedImpl();

  @override
  String toString() {
    return 'SelectFileState.noImageSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoImageSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Uint8List pickedImageBytes) success,
    required TResult Function() noImageSelected,
    required TResult Function() error,
  }) {
    return noImageSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List pickedImageBytes)? success,
    TResult? Function()? noImageSelected,
    TResult? Function()? error,
  }) {
    return noImageSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List pickedImageBytes)? success,
    TResult Function()? noImageSelected,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (noImageSelected != null) {
      return noImageSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(NoImageSelected value) noImageSelected,
    required TResult Function(Error value) error,
  }) {
    return noImageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(NoImageSelected value)? noImageSelected,
    TResult? Function(Error value)? error,
  }) {
    return noImageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(NoImageSelected value)? noImageSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (noImageSelected != null) {
      return noImageSelected(this);
    }
    return orElse();
  }
}

abstract class NoImageSelected implements SelectFileState {
  const factory NoImageSelected() = _$NoImageSelectedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SelectFileStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectFileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'SelectFileState.error()';
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
    required TResult Function() loading,
    required TResult Function(Uint8List pickedImageBytes) success,
    required TResult Function() noImageSelected,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List pickedImageBytes)? success,
    TResult? Function()? noImageSelected,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List pickedImageBytes)? success,
    TResult Function()? noImageSelected,
    TResult Function()? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(NoImageSelected value) noImageSelected,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(NoImageSelected value)? noImageSelected,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(NoImageSelected value)? noImageSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SelectFileState {
  const factory Error() = _$ErrorImpl;
}
