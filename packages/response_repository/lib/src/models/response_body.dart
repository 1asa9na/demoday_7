// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:response_repository/response_repository.dart';

part 'response_body.freezed.dart';
part 'response_body.g.dart';

@freezed
class ResponseBody with _$ResponseBody {
  const factory ResponseBody({
    required String option,
    required List<OptionResponse> option_response,
  }) = _ResponseBody;

  factory ResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ResponseBodyFromJson(json);
}
