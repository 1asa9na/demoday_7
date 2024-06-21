part of 'select_file_bloc.dart';

@freezed
class SelectFileState with _$SelectFileState {
  const factory SelectFileState.loading() = Loading;
  const factory SelectFileState.success({required Uint8List pickedImageBytes}) =
      Success;
  const factory SelectFileState.noImageSelected() = NoImageSelected;
  const factory SelectFileState.error() = Error;
}
