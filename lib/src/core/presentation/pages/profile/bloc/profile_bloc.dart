import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:profile_prefs_repository/parameters_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required ProfilePrefsRepository profilePrefsRepository})
      : _profilePrefsRepository = profilePrefsRepository,
        super(const ProfileState.loading()) {
    on<_ProfileStarted>(_onProfileStarted);
  }

  final ProfilePrefsRepository _profilePrefsRepository;

  Future<void> _onProfileStarted(
    _ProfileStarted event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      final prefs = await _profilePrefsRepository.fetch();

      emit(ProfileState.success(prefs: prefs));
    } catch (e) {
      emit(const ProfileState.error());
    }
  }
}
