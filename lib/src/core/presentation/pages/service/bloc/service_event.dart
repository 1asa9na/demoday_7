part of 'service_bloc.dart';

@freezed
class ServiceEvent with _$ServiceEvent {
  const factory ServiceEvent.started({
    required int picture,
    required int numeric,
  }) = _Started;
}
