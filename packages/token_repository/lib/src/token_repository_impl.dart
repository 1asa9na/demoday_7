import 'package:token_repository/token_repository.dart';

class TokenRepositoryImpl extends TokenRepository {
  String? token;

  @override
  void setToken(String? token) {
    this.token = token;
  }

  @override
  String? getToken() {
    return token;
  }
}
