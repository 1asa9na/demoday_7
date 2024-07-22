part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.loading() = Loading;
  const factory NavigationState.loggedIn({required String token}) = LoggedIn;
  const factory NavigationState.error() = Error;
  const factory NavigationState.loggedOut() = LoggedOut;
}
