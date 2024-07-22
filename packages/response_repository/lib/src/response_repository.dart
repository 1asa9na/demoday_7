import 'package:response_repository/src/models/models.dart';

abstract class ResponseRepository {
  Future<ResponseBody> fetch(
      {required Map<String, dynamic> data, required String option});
}
