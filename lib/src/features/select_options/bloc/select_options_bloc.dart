import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:options_repository/options_repository.dart';

part 'select_options_event.dart';
part 'select_options_state.dart';
part 'select_options_bloc.freezed.dart';

class SelectOptionsBloc extends Bloc<SelectOptionsEvent, SelectOptionsState> {
  SelectOptionsBloc({
    required OptionsRepository optionsRepository,
  })  : _optionsRepository = optionsRepository,
        super(const SelectOptionsState.loading()) {
    on<_SelectOptionsStarted>(_onSelectOptionsStarted);
  }

  final OptionsRepository _optionsRepository;

  Future<void> _onSelectOptionsStarted(
    _SelectOptionsStarted event,
    Emitter<SelectOptionsState> emit,
  ) async {
    try {
      final options = await _optionsRepository.fetch();

      emit(SelectOptionsState.success(options: options));
    } catch (e) {
      emit(const SelectOptionsState.error());
    }
  }
}
