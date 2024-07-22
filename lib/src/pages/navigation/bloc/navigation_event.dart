part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.started() = _NavigationStarted;
  const factory NavigationEvent.logIn() = _NavigationLogIn;
}
