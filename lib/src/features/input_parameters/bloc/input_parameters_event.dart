part of 'input_parameters_bloc.dart';

@freezed
class InputParametersEvent with _$InputParametersEvent {
  const factory InputParametersEvent.started() = _InputParametersStarted;
}
