part of 'select_file_bloc.dart';

@freezed
class SelectFileEvent with _$SelectFileEvent {
  const factory SelectFileEvent.started() = _SelectFileStarted;
  const factory SelectFileEvent.pickImage() = _SelectFilePickImage;
}
