import 'package:parameters_repository/src/models/models.dart';

abstract class ParametersRepository {
  Future<List<Parameter>> fetch();
}
