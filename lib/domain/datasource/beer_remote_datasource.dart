import 'package:test_exercise/core/model/beer_item.dart';

abstract class BeerRemoteDataSource {
  Future<List<BeerItem>> loadBeers();
}
