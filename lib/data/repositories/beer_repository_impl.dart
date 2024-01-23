import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/domain/repositories/beer_repository.dart';
import 'package:test_exercise/injection.dart';

class BeerRepositoryImpl implements BeerRepository {
  final Ref ref;

  BeerRepositoryImpl(this.ref);

  @override
  Future<List<BeerItem>> loadBeerList() async =>
      await ref.read(beerDataSourceProvider).loadBeers();

  @override
  Future<BeerItem> loadBeerDetail(int id) async =>
      await ref.read(beerDataSourceProvider).loadBeerDetail(id);
}
