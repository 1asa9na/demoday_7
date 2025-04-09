import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:token_repository/token_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthenticationRepository authRepository,
    required TokenRepository tokenRepository,
  })  : _authRepository = authRepository,
        _tokenRepository = tokenRepository,
        super(const LoginState.blank()) {
    on<_LoginStarted>(_onLoginStarted);
    on<_LoginLogin>(_onLogin);
  }

  final AuthenticationRepository _authRepository;
  final TokenRepository _tokenRepository;

  Future<void> _onLoginStarted(
    _LoginStarted event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.blank());
  }

  Future<void> _onLogin(
    _LoginLogin event,
    Emitter<LoginState> emit,
  ) async {
    try {
      Map<String, String> loginData = {
        'email': event.email,
        'password': event.password
      };
      String token = await _authRepository.login(loginData);
      _tokenRepository.setToken(token);
      emit(const LoginState.loginSuccess());
    } catch (e) {
      emit(const LoginState.error());
    }
  }
}
