import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({
    required AuthenticationRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SignupState.blank()) {
    on<_SignupStarted>(_onSignupStarted);
    on<_SignupSignup>(_onSignup);
  }

  final AuthenticationRepository _authRepository;

  Future<void> _onSignupStarted(
    _SignupStarted event,
    Emitter<SignupState> emit,
  ) async {
    emit(const SignupState.blank());
  }

  Future<void> _onSignup(
    _SignupSignup event,
    Emitter<SignupState> emit,
  ) async {
    Map<String, String> loginData = {
      'email': event.email,
      'password': event.password
    };
    try {
      String message = await _authRepository.signup(loginData);
      emit(SignupState.signupSuccess(message: message));
    } catch (e) {
      emit(const SignupState.error());
    }
  }
}
