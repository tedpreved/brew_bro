import 'package:dartz/dartz.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/error/failure.dart';

abstract class BeerRepository {
  Future<Either<Failure, List<BeerItem>>> loadBeerList();
  Future<Either<Failure, BeerItem>> loadBeerDetail(int id);
}
