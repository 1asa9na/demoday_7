part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.success(
      {required int picture, required int numeric}) = Success;
}
