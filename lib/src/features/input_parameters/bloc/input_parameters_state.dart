part of 'input_parameters_bloc.dart';

@freezed
class InputParametersState with _$InputParametersState {
  const factory InputParametersState.loading() = Loading;
  const factory InputParametersState.success(
      {required List<Parameter> parameters}) = Success;
  const factory InputParametersState.error() = Error;
}
