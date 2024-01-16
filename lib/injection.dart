
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:test_exercise/data/repositories/beer_repository_impl.dart';
import 'package:test_exercise/presentation/bloc/list/beer_list_bloc.dart';

import 'data/datasource/beer_remote_datasource_impl.dart';
import 'domain/datasource/beer_remote_datasource.dart';
import 'domain/repositories/beer_repository.dart';
import 'domain/usecases/load_beer_use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => BeerListBloc(getBeerUseCase: sl()),
  );

  // Use cases
  sl.registerLazySingleton(
    () => GetBeerListUseCase(sl()),
  );

  // Repository
  sl.registerLazySingleton<BeerRepository>(
    () => BeerRepositoryImpl(sl()),
  );

  // Data sources
  sl.registerLazySingleton<BeerRemoteDataSource>(
    () => BeerRemoteDataSourceImpl(httpClient: sl()),
  );

  // Dio setup
  sl.registerLazySingleton<Dio>(
    () {
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

      if (true) {
        client.interceptors.add(
          LogInterceptor(
            request: true,
            requestBody: true,
            responseBody: true,
            responseHeader: true,
            logPrint: (o) => debugPrint(o.toString()),
          ),
        );
      }

      return client;
    },
  );
}

