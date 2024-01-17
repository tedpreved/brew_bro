import 'package:dartz/dartz.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/domain/common/use_case.dart';
import 'package:test_exercise/domain/repositories/beer_repository.dart';
import 'package:test_exercise/error/failure.dart';

class GetBeerDetailsUseCase extends UseCase<BeerItem, int> {
  final BeerRepository repository;

  GetBeerDetailsUseCase(this.repository);

  @override
  Future<Either<Failure, BeerItem>> call(int params) async {
    return await repository.loadBeerDetail(params);
  }
}
