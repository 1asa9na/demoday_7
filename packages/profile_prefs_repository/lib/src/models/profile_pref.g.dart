// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_pref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilePrefImpl _$$ProfilePrefImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePrefImpl(
      name: json['name'] as String,
      prefs: (json['prefs'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProfilePrefImplToJson(_$ProfilePrefImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'prefs': instance.prefs,
    };
