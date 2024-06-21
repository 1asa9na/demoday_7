part of 'select_options_bloc.dart';

@freezed
class SelectOptionsState with _$SelectOptionsState {
  const factory SelectOptionsState.loading() = Loading;
  const factory SelectOptionsState.success({required List<Option> options}) =
      Success;
  const factory SelectOptionsState.error() = Error;
}
