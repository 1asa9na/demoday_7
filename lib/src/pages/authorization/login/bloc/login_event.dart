part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _LoginStarted;
  const factory LoginEvent.login(
      {required String email, required String password}) = _LoginLogin;
}
