part of 'select_options_bloc.dart';

@freezed
class SelectOptionsEvent with _$SelectOptionsEvent {
  const factory SelectOptionsEvent.started() = _SelectOptionsStarted;
}
