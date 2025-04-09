import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_pref.freezed.dart';
part 'profile_pref.g.dart';

@freezed
class ProfilePref with _$ProfilePref {
  const factory ProfilePref({
    required String name,
    required List<String> prefs,
  }) = _ProfilePref;

  factory ProfilePref.fromJson(Map<String, dynamic> json) =>
      _$ProfilePrefFromJson(json);
}
