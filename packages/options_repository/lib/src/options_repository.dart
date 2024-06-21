import 'package:options_repository/src/models/models.dart';

abstract class OptionsRepository {
  Future<List<Option>> fetch();
}
