import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parameters_repository/parameters_repository.dart';

part 'input_parameters_event.dart';
part 'input_parameters_state.dart';
part 'input_parameters_bloc.freezed.dart';

class InputParametersBloc
    extends Bloc<InputParametersEvent, InputParametersState> {
  InputParametersBloc({
    required ParametersRepository parametersRepository,
  })  : _parametersRepository = parametersRepository,
        super(const InputParametersState.loading()) {
    on<_InputParametersStarted>(_onInputParametersStarted);
  }

  final ParametersRepository _parametersRepository;

  Future<void> _onInputParametersStarted(
    _InputParametersStarted event,
    Emitter<InputParametersState> emit,
  ) async {
    try {
      final parameters = await _parametersRepository.fetch();

      emit(InputParametersState.success(parameters: parameters));
    } catch (e) {
      emit(const InputParametersState.error());
    }
  }
}
