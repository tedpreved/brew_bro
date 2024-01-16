import 'package:dio/dio.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/domain/datasource/beer_remote_datasource.dart';

class BeerRemoteDataSourceImpl implements BeerRemoteDataSource {
  final Dio httpClient;

  BeerRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<List<BeerItem>> loadBeers() async {
    try {
      final response = await httpClient.get('beers');
      if (response.statusCode == 200) {
        final beerList = List<BeerItem>.from(
            response.data.map((fruit) => BeerItem.fromJson(fruit)));
        return beerList;
      } else {
        throw Exception();
      }
    } on DioException catch (e) {
      throw Exception(e);
    }
  }
}
