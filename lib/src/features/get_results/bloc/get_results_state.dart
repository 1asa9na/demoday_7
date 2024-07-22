part of 'get_results_bloc.dart';

@freezed
class GetResultsState with _$GetResultsState {
  const factory GetResultsState.loading() = Loading;
  const factory GetResultsState.success(
      {required List<ResponseBody> response}) = Success;
  const factory GetResultsState.error() = Error;
  const factory GetResultsState.blank() = Blank;
}
