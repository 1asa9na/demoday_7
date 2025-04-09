import 'package:profile_prefs_repository/src/models/models.dart';

abstract class ProfilePrefsRepository {
  Future<List<ProfilePref>> fetch();
}
