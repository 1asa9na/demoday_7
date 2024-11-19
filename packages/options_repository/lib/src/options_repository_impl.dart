import 'package:options_repository/src/models/models.dart';
import 'package:options_repository/src/options_repository.dart';

final class OptionsRepositoryImpl implements OptionsRepository {
  @override
  Future<List<Option>> fetch() async {
    await Future.delayed(const Duration(seconds: 1));
    return const [
      Option(name: "Вид материала", option: "type"),
      Option(name: "Воздухопроницаемость", option: "breath"),
      Option(name: "Жёсткость и драпируемость", option: "stiffdrape"),
    ];
  }
}
