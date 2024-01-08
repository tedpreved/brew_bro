import 'package:test_exercise/core/model/fruit_item.dart';

abstract class FruitRemoteDataSource {
  Future<List<FruitItem>> loadFruits();
}
