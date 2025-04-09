part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginSuccess() = LoginSuccess;
  const factory LoginState.error() = Error;
  const factory LoginState.blank() = Blank;
}
