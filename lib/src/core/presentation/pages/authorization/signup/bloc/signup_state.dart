part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.signupSuccess({required String message}) =
      SignupSuccess;
  const factory SignupState.error() = Error;
  const factory SignupState.blank() = Blank;
}
