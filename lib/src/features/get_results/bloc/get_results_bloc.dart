import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:response_repository/response_repository.dart';

part 'get_results_event.dart';
part 'get_results_state.dart';
part 'get_results_bloc.freezed.dart';

class GetResultsBloc extends Bloc<GetResultsEvent, GetResultsState> {
  GetResultsBloc({
    required ResponseRepository responseRepository,
  })  : _responseRepository = responseRepository,
        super(const GetResultsState.loading()) {
    on<_GetResultsStarted>(_onGetResultsStarted);
  }

  final ResponseRepository _responseRepository;

  Future<void> _onGetResultsStarted(
    _GetResultsStarted event,
    Emitter<GetResultsState> emit,
  ) async {
    emit(const GetResultsState.blank());
  }

  Future<void> _onGetResultsPost(
    _GetResultsPost event,
    Emitter<GetResultsState> emit,
    Map<String, dynamic> data,
    List<String> options,
  ) async {
    List<ResponseBody> responses = [];
    try {
      for (int i = 0; i < options.length; i++) {
        final ResponseBody response =
            await _responseRepository.fetch(data: data, option: options[i]);
        responses.add(response);
      }
    } catch (e) {
      emit(const GetResultsState.error());
    } finally {
      emit(GetResultsState.success(response: responses));
    }
  }
}
