import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demoday_7/src/themes/app_strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:response_repository/response_repository.dart';
import 'package:token_repository/token_repository.dart';

part 'get_results_event.dart';
part 'get_results_state.dart';
part 'get_results_bloc.freezed.dart';

class GetResultsBloc extends Bloc<GetResultsEvent, GetResultsState> {
  GetResultsBloc({
    required ResponseRepository responseRepository,
    required TokenRepository tokenRepository,
  })  : _responseRepository = responseRepository,
        _tokenRepository = tokenRepository,
        super(const GetResultsState.loading()) {
    on<_GetResultsStarted>(_onGetResultsStarted);
    on<_GetResultsPost>(_onGetResultsPost);
  }

  final ResponseRepository _responseRepository;
  final TokenRepository _tokenRepository;

  Future<void> _onGetResultsStarted(
    _GetResultsStarted event,
    Emitter<GetResultsState> emit,
  ) async {
    emit(const GetResultsState.blank());
  }

  Future<void> _onGetResultsPost(
    _GetResultsPost event,
    Emitter<GetResultsState> emit,
  ) async {
    List<ResponseBody> responses = [];
    List<String> options = [];
    event.options.forEach((key, value) => value ? options.add(key) : null);
    final String? token = _tokenRepository.getToken();
    if (token != null) {
      try {
        for (int i = 0; i < event.options.length; i++) {
          final ResponseBody response = await _responseRepository.fetch(
              data: event.data, option: options[i], token: token);
          responses.add(response);
        }
        emit(GetResultsState.success(responses: responses));
      } catch (e) {
        emit(const GetResultsState.error(message: AppStrings.logError));
      }
    } else {
      emit(const GetResultsState.error(message: AppStrings.loggedOut));
    }
  }
}
