import 'package:parameters_repository/parameters_repository.dart';

final class ParametersRepositoryImpl implements ParametersRepository {
  @override
  Future<List<Parameter>> fetch() async {
    await Future.delayed(const Duration(seconds: 1));
    return const [
      Parameter(name: "Height", parameter: "Height", type: "double"),
      Parameter(name: "Density", parameter: "Density", type: "int"),
      Parameter(name: "Consist", parameter: "Consist", type: "int"),
      Parameter(name: "Thread", parameter: "Thread", type: "int"),
      Parameter(name: "is_fabric", parameter: "is_fabric", type: "bool"),
      Parameter(name: "is_knitwear", parameter: "is_knitwear", type: "bool"),
    ];
  }
}
