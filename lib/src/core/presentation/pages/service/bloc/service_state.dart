part of 'service_bloc.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.success(
      {required int picture, required int numeric}) = Success;
}
