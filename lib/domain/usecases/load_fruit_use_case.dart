import 'package:dartz/dartz.dart';
import 'package:test_exercise/data/model/fruit_item.dart';
import 'package:test_exercise/domain/common/use_case.dart';
import 'package:test_exercise/domain/repositories/fruit_repository.dart';
import 'package:test_exercise/error/failure.dart';

class GetFruitListUseCase extends UseCase<List<FruitItem>, NoParams> {
  final FruitRepository repository;

  GetFruitListUseCase(this.repository);

  @override
  Future<Either<Failure, List<FruitItem>>> call(void params) async {
    return await repository.loadFruitList();
  }
}
