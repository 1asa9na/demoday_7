import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'select_file_event.dart';
part 'select_file_state.dart';
part 'select_file_bloc.freezed.dart';

class SelectFileBloc extends Bloc<SelectFileEvent, SelectFileState> {
  final ImagePicker _imagePicker = ImagePicker();

  SelectFileBloc() : super(const SelectFileState.loading()) {
    on<_SelectFileStarted>(_onSelectFileStarted);
    on<_SelectFilePickImage>(_onSelectFilePickImage);
  }

  Future<void> _onSelectFileStarted(
    _SelectFileStarted event,
    Emitter<SelectFileState> emit,
  ) async {
    emit(const SelectFileState.noImageSelected());
  }

  Future<void> _onSelectFilePickImage(
    _SelectFilePickImage event,
    Emitter<SelectFileState> emit,
  ) async {
    try {
      final pickedImage =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage == null) {
        emit(const SelectFileState.noImageSelected());
      } else {
        final pickedImageBytes = await pickedImage.readAsBytes();
        emit(SelectFileState.success(pickedImageBytes: pickedImageBytes));
      }
    } catch (e) {
      emit(const SelectFileState.error());
    }
  }
}
