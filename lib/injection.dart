import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:test_exercise/domain/repositories/fruit_repositorie_impl.dart';
import 'package:test_exercise/presentation/bloc/list/fruit_list_bloc.dart';
import 'package:test_exercise/utils.dart';

import 'data/datasource/fruit_remote_datasource.dart';
import 'domain/repositories/fruit_repository.dart';
import 'domain/usecases/load_fruit_use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => FruitListBloc(getFruitUseCase: sl()),
  );

  // Use cases
  sl.registerLazySingleton(
    () => GetFruitListUseCase(sl()),
  );

  // Repository
  sl.registerLazySingleton<FruitRepository>(
    () => FruitRepositoryImpl(sl()),
  );

  // Data sources
  sl.registerLazySingleton<FruitRemoteDataSource>(
    () => FruitRemoteDataSourceImpl(httpClient: sl()),
  );

  // Dio setup
  sl.registerLazySingleton<Dio>(
    () {
      final client = Dio(
        BaseOptions(
          baseUrl: getBaseUrlDependOnPlatform(),
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
