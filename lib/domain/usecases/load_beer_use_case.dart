import 'package:dartz/dartz.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/domain/common/use_case.dart';
import 'package:test_exercise/domain/repositories/beer_repository.dart';
import 'package:test_exercise/error/failure.dart';

class GetBeerListUseCase extends UseCase<List<BeerItem>, NoParams> {
  final BeerRepository repository;

  GetBeerListUseCase(this.repository);

  @override
  Future<Either<Failure, List<BeerItem>>> call(NoParams params) async {
    return await repository.loadBeerList();
  }
}
