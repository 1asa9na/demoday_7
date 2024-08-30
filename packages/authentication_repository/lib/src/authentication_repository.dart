abstract class AuthenticationRepository {
  Future<String> login(Map<String, String> loginData);
  Future<String> signup(Map<String, String> loginData);
}
