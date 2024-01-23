import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_exercise/data/datasource/beer_remote_datasource_impl.dart';
import 'package:test_exercise/data/repositories/beer_repository_impl.dart';
import 'package:test_exercise/domain/datasource/beer_remote_datasource.dart';
import 'package:test_exercise/domain/repositories/beer_repository.dart';

import 'core/model/beer_item.dart';

part 'injection.g.dart';

final dioProvider = Provider<Dio>((ref) {
  final client = Dio(
    BaseOptions(
      baseUrl: 'https://api.punkapi.com/v2/',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Content-Type'] = 'application/json';
          return handler.next(options);
        },
      ),
    );
  //TODO: make debug condition
  if (true) {
    client.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (o) => debugPrint(o.toString()),
      ),
    );
  }

  return client;
});

final beerDataSourceProvider =
    Provider<BeerRemoteDataSource>(BeerRemoteDataSourceImpl.new);

final beerRepositoryProvider = Provider<BeerRepository>(BeerRepositoryImpl.new);

@riverpod
Future<List<BeerItem>> beerList(BeerListRef ref) {
  return ref.read(beerRepositoryProvider).loadBeerList();
}
