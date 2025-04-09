part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.started() = _SignupStarted;
  const factory SignupEvent.signup(
      {required String email, required String password}) = _SignupSignup;
}
