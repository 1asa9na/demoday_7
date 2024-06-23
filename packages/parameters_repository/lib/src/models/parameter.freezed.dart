// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
mixin _$Parameter {
  String get name => throw _privateConstructorUsedError;
  String get parameter => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterCopyWith<Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res, Parameter>;
  @useResult
  $Res call({String name, String parameter, String type});
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res, $Val extends Parameter>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parameter = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParameterImplCopyWith<$Res>
    implements $ParameterCopyWith<$Res> {
  factory _$$ParameterImplCopyWith(
          _$ParameterImpl value, $Res Function(_$ParameterImpl) then) =
      __$$ParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String parameter, String type});
}

/// @nodoc
class __$$ParameterImplCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res, _$ParameterImpl>
    implements _$$ParameterImplCopyWith<$Res> {
  __$$ParameterImplCopyWithImpl(
      _$ParameterImpl _value, $Res Function(_$ParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parameter = null,
    Object? type = null,
  }) {
    return _then(_$ParameterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterImpl implements _Parameter {
  const _$ParameterImpl(
      {required this.name, required this.parameter, required this.type});

  factory _$ParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterImplFromJson(json);

  @override
  final String name;
  @override
  final String parameter;
  @override
  final String type;

  @override
  String toString() {
    return 'Parameter(name: $name, parameter: $parameter, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, parameter, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      __$$ParameterImplCopyWithImpl<_$ParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParameterImplToJson(
      this,
    );
  }
}

abstract class _Parameter implements Parameter {
  const factory _Parameter(
      {required final String name,
      required final String parameter,
      required final String type}) = _$ParameterImpl;

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$ParameterImpl.fromJson;

  @override
  String get name;
  @override
  String get parameter;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
