import 'package:test_exercise/core/model/beer_item.dart';

abstract class BeerRepository {
  Future<List<BeerItem>> loadBeerList();
  Future<BeerItem> loadBeerDetail(int id);
}
