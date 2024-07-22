import 'dart:async';
import 'dart:convert';

import 'package:api_client/api_client.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState.loading()) {
    on<_NavigationStarted>(_onNavigationStarted);
  }

  Future<void> _onNavigationLogIn(
    _NavigationLogIn event,
    Emitter<NavigationState> emit,
    Map<String, String> logData,
    ApiClient apiClient,
  ) async {
    try {
      final Response response = await apiClient.dio.post(
        '/login',
        options: Options(
          responseType: ResponseType.json,
          contentType: Headers.jsonContentType,
        ),
        data: logData,
      );

      emit(NavigationState.loggedIn(token: jsonDecode(response.data)['token']));
    } catch (e) {
      emit(const NavigationState.error());
    }
  }

  Future<void> _onNavigationStarted(
    _NavigationStarted event,
    Emitter<NavigationState> emit,
  ) async {
    try {
      await dotenv.load(fileName: '.env');
      if (dotenv.env['TOKEN'] == '') {
        emit(const NavigationState.loggedOut());
      } else {
        emit(NavigationState.loggedIn(token: dotenv.env['TOKEN']!));
      }
    } catch (e) {
      emit(const NavigationState.loggedOut());
    }
  }
}
