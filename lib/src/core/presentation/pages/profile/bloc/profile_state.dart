part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.success({required List<ProfilePref> prefs}) =
      Success;
  const factory ProfileState.error() = Error;
}
