import 'package:dio/dio.dart';
import 'package:test_exercise/data/model/fruit_item.dart';

//TODO: add separate exceptions for parsing data and an error from the server
abstract class FruitRemoteDataSource {
  Future<List<FruitItem>> loadFruits();
}

class FruitRemoteDataSourceImpl implements FruitRemoteDataSource {
  final Dio httpClient;

  FruitRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<List<FruitItem>> loadFruits() async {
    try {
      final response = await httpClient.get('fruits');
      if (response.statusCode == 200) {
        final fruits = List<FruitItem>.from(
            response.data.map((fruit) => FruitItem.fromJson(fruit)));
        return fruits;
      } else {
        throw Exception();
      }
    } on DioException catch (e) {
      throw Exception(e);
    }
  }
}
