import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_response.freezed.dart';
part 'option_response.g.dart';

@freezed
class OptionResponse with _$OptionResponse {
  const factory OptionResponse({
    required String name,
    required String option,
    required String result,
  }) = _OptionResponse;

  factory OptionResponse.fromJson(Map<String, dynamic> json) =>
      _$OptionResponseFromJson(json);
}
