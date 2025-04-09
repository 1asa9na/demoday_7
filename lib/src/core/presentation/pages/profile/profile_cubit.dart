import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<String?> {
  ProfileCubit() : super(null);

  void setPref(String newState) => emit(newState);
}
