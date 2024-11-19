import 'package:parameters_repository/parameters_repository.dart';

final class ParametersRepositoryImpl implements ParametersRepository {
  @override
  Future<List<Parameter>> fetch() async {
    await Future.delayed(const Duration(seconds: 1));
    return const [
      Parameter(name: "Высота", parameter: "Height", type: "double"),
      Parameter(name: "Плотность", parameter: "Density", type: "int"),
      Parameter(name: "Состав", parameter: "Consist", type: "choose"),
      Parameter(name: "Вид нити", parameter: "Thread", type: "choose"),
      Parameter(name: "Является тканью", parameter: "is_fabric", type: "bool"),
      Parameter(
          name: "Является трикотажем", parameter: "is_knitwear", type: "bool"),
    ];
  }
}
