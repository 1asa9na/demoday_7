// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBody _$ResponseBodyFromJson(Map<String, dynamic> json) {
  return _ResponseBody.fromJson(json);
}

/// @nodoc
mixin _$ResponseBody {
  String get option => throw _privateConstructorUsedError;
  List<OptionResponse> get option_response =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBodyCopyWith<ResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBodyCopyWith<$Res> {
  factory $ResponseBodyCopyWith(
          ResponseBody value, $Res Function(ResponseBody) then) =
      _$ResponseBodyCopyWithImpl<$Res, ResponseBody>;
  @useResult
  $Res call({String option, List<OptionResponse> option_response});
}

/// @nodoc
class _$ResponseBodyCopyWithImpl<$Res, $Val extends ResponseBody>
    implements $ResponseBodyCopyWith<$Res> {
  _$ResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? option_response = null,
  }) {
    return _then(_value.copyWith(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      option_response: null == option_response
          ? _value.option_response
          : option_response // ignore: cast_nullable_to_non_nullable
              as List<OptionResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseBodyImplCopyWith<$Res>
    implements $ResponseBodyCopyWith<$Res> {
  factory _$$ResponseBodyImplCopyWith(
          _$ResponseBodyImpl value, $Res Function(_$ResponseBodyImpl) then) =
      __$$ResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String option, List<OptionResponse> option_response});
}

/// @nodoc
class __$$ResponseBodyImplCopyWithImpl<$Res>
    extends _$ResponseBodyCopyWithImpl<$Res, _$ResponseBodyImpl>
    implements _$$ResponseBodyImplCopyWith<$Res> {
  __$$ResponseBodyImplCopyWithImpl(
      _$ResponseBodyImpl _value, $Res Function(_$ResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? option_response = null,
  }) {
    return _then(_$ResponseBodyImpl(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      option_response: null == option_response
          ? _value._option_response
          : option_response // ignore: cast_nullable_to_non_nullable
              as List<OptionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBodyImpl implements _ResponseBody {
  const _$ResponseBodyImpl(
      {required this.option,
      required final List<OptionResponse> option_response})
      : _option_response = option_response;

  factory _$ResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBodyImplFromJson(json);

  @override
  final String option;
  final List<OptionResponse> _option_response;
  @override
  List<OptionResponse> get option_response {
    if (_option_response is EqualUnmodifiableListView) return _option_response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_option_response);
  }

  @override
  String toString() {
    return 'ResponseBody(option: $option, option_response: $option_response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBodyImpl &&
            (identical(other.option, option) || other.option == option) &&
            const DeepCollectionEquality()
                .equals(other._option_response, _option_response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, option,
      const DeepCollectionEquality().hash(_option_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBodyImplCopyWith<_$ResponseBodyImpl> get copyWith =>
      __$$ResponseBodyImplCopyWithImpl<_$ResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _ResponseBody implements ResponseBody {
  const factory _ResponseBody(
          {required final String option,
          required final List<OptionResponse> option_response}) =
      _$ResponseBodyImpl;

  factory _ResponseBody.fromJson(Map<String, dynamic> json) =
      _$ResponseBodyImpl.fromJson;

  @override
  String get option;
  @override
  List<OptionResponse> get option_response;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBodyImplCopyWith<_$ResponseBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
