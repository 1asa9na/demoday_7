// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBodyImpl _$$ResponseBodyImplFromJson(Map<String, dynamic> json) =>
    _$ResponseBodyImpl(
      option: json['option'] as String,
      option_response: (json['option_response'] as List<dynamic>)
          .map((e) => OptionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseBodyImplToJson(_$ResponseBodyImpl instance) =>
    <String, dynamic>{
      'option': instance.option,
      'option_response': instance.option_response,
    };
