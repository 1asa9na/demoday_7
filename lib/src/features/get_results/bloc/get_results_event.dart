part of 'get_results_bloc.dart';

@freezed
class GetResultsEvent with _$GetResultsEvent {
  const factory GetResultsEvent.started() = _GetResultsStarted;
  const factory GetResultsEvent.post({
    required Map<String, dynamic> data,
    required Map<String, bool> options,
  }) = _GetResultsPost;
}
