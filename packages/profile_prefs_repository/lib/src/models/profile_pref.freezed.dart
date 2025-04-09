// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_pref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfilePref _$ProfilePrefFromJson(Map<String, dynamic> json) {
  return _ProfilePref.fromJson(json);
}

/// @nodoc
mixin _$ProfilePref {
  String get name => throw _privateConstructorUsedError;
  List<String> get prefs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePrefCopyWith<ProfilePref> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePrefCopyWith<$Res> {
  factory $ProfilePrefCopyWith(
          ProfilePref value, $Res Function(ProfilePref) then) =
      _$ProfilePrefCopyWithImpl<$Res, ProfilePref>;
  @useResult
  $Res call({String name, List<String> prefs});
}

/// @nodoc
class _$ProfilePrefCopyWithImpl<$Res, $Val extends ProfilePref>
    implements $ProfilePrefCopyWith<$Res> {
  _$ProfilePrefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? prefs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefs: null == prefs
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePrefImplCopyWith<$Res>
    implements $ProfilePrefCopyWith<$Res> {
  factory _$$ProfilePrefImplCopyWith(
          _$ProfilePrefImpl value, $Res Function(_$ProfilePrefImpl) then) =
      __$$ProfilePrefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> prefs});
}

/// @nodoc
class __$$ProfilePrefImplCopyWithImpl<$Res>
    extends _$ProfilePrefCopyWithImpl<$Res, _$ProfilePrefImpl>
    implements _$$ProfilePrefImplCopyWith<$Res> {
  __$$ProfilePrefImplCopyWithImpl(
      _$ProfilePrefImpl _value, $Res Function(_$ProfilePrefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? prefs = null,
  }) {
    return _then(_$ProfilePrefImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefs: null == prefs
          ? _value._prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePrefImpl implements _ProfilePref {
  const _$ProfilePrefImpl(
      {required this.name, required final List<String> prefs})
      : _prefs = prefs;

  factory _$ProfilePrefImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePrefImplFromJson(json);

  @override
  final String name;
  final List<String> _prefs;
  @override
  List<String> get prefs {
    if (_prefs is EqualUnmodifiableListView) return _prefs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prefs);
  }

  @override
  String toString() {
    return 'ProfilePref(name: $name, prefs: $prefs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePrefImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._prefs, _prefs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_prefs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePrefImplCopyWith<_$ProfilePrefImpl> get copyWith =>
      __$$ProfilePrefImplCopyWithImpl<_$ProfilePrefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePrefImplToJson(
      this,
    );
  }
}

abstract class _ProfilePref implements ProfilePref {
  const factory _ProfilePref(
      {required final String name,
      required final List<String> prefs}) = _$ProfilePrefImpl;

  factory _ProfilePref.fromJson(Map<String, dynamic> json) =
      _$ProfilePrefImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get prefs;
  @override
  @JsonKey(ignore: true)
  _$$ProfilePrefImplCopyWith<_$ProfilePrefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
