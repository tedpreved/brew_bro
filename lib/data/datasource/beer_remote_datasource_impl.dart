import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/domain/datasource/beer_remote_datasource.dart';
import 'package:test_exercise/injection.dart';

class BeerRemoteDataSourceImpl implements BeerRemoteDataSource {
  final Ref ref;

  BeerRemoteDataSourceImpl(this.ref);

  @override
  Future<List<BeerItem>> loadBeers() async => await _getList('beers');

  @override
  Future<BeerItem> loadBeerDetail(int id) async => await _getItem('beer/$id');

  Future<List<BeerItem>> _getList(
    String path, {
    CancelToken? cancelToken,
  }) async {
    final response = await ref.read(dioProvider).get<List<dynamic>>(
          path,
          cancelToken: cancelToken,
          // TO-DO deserialize error message
        );

    final beers = (response.data as List)
        .map((e) => BeerItem.fromJson(e as Map<String, dynamic>))
        .toList();
    return beers;
  }

  Future<BeerItem> _getItem(
    String path, {
    CancelToken? cancelToken,
  }) async {
    final response = await ref.read(dioProvider).get<Map<String, Object?>>(
          path,
          cancelToken: cancelToken,
          // TO-DO deserialize error message
        );

    return BeerItem.fromJson(response.data as Map<String, dynamic>);
  }
}
