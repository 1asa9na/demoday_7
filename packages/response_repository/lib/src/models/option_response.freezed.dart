// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OptionResponse _$OptionResponseFromJson(Map<String, dynamic> json) {
  return _OptionResponse.fromJson(json);
}

/// @nodoc
mixin _$OptionResponse {
  String get name => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionResponseCopyWith<OptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionResponseCopyWith<$Res> {
  factory $OptionResponseCopyWith(
          OptionResponse value, $Res Function(OptionResponse) then) =
      _$OptionResponseCopyWithImpl<$Res, OptionResponse>;
  @useResult
  $Res call({String name, String option, String result});
}

/// @nodoc
class _$OptionResponseCopyWithImpl<$Res, $Val extends OptionResponse>
    implements $OptionResponseCopyWith<$Res> {
  _$OptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? option = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionResponseImplCopyWith<$Res>
    implements $OptionResponseCopyWith<$Res> {
  factory _$$OptionResponseImplCopyWith(_$OptionResponseImpl value,
          $Res Function(_$OptionResponseImpl) then) =
      __$$OptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String option, String result});
}

/// @nodoc
class __$$OptionResponseImplCopyWithImpl<$Res>
    extends _$OptionResponseCopyWithImpl<$Res, _$OptionResponseImpl>
    implements _$$OptionResponseImplCopyWith<$Res> {
  __$$OptionResponseImplCopyWithImpl(
      _$OptionResponseImpl _value, $Res Function(_$OptionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? option = null,
    Object? result = null,
  }) {
    return _then(_$OptionResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionResponseImpl implements _OptionResponse {
  const _$OptionResponseImpl(
      {required this.name, required this.option, required this.result});

  factory _$OptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String option;
  @override
  final String result;

  @override
  String toString() {
    return 'OptionResponse(name: $name, option: $option, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, option, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionResponseImplCopyWith<_$OptionResponseImpl> get copyWith =>
      __$$OptionResponseImplCopyWithImpl<_$OptionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionResponseImplToJson(
      this,
    );
  }
}

abstract class _OptionResponse implements OptionResponse {
  const factory _OptionResponse(
      {required final String name,
      required final String option,
      required final String result}) = _$OptionResponseImpl;

  factory _OptionResponse.fromJson(Map<String, dynamic> json) =
      _$OptionResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get option;
  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$$OptionResponseImplCopyWith<_$OptionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
