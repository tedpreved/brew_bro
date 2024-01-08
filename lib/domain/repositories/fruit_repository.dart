import 'package:dartz/dartz.dart';
import 'package:test_exercise/core/model/fruit_item.dart';
import 'package:test_exercise/error/failure.dart';

abstract class FruitRepository {
  Future<Either<Failure, List<FruitItem>>> loadFruitList();
}
