import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_event.dart';
part 'service_state.dart';
part 'service_bloc.freezed.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc() : super(const ServiceState.success(picture: 0, numeric: 0)) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ServiceState> emit,
  ) async {
    emit(ServiceState.success(
      picture: event.picture,
      numeric: event.numeric,
    ));
  }
}
