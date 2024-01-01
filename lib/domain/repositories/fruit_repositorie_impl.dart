import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_exercise/data/datasource/fruit_remote_datasource.dart';
import 'package:test_exercise/data/model/fruit_item.dart';
import 'package:test_exercise/domain/repositories/fruit_repository.dart';
import 'package:test_exercise/error/failure.dart';

class FruitRepositoryImpl implements FruitRepository {
  final FruitRemoteDataSource remoteDataSource;

  FruitRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<FruitItem>>> loadFruitList() async {
    try {
      return Right(await remoteDataSource.loadFruits());
    } on DioException catch (error) {
      debugPrint('DioException: ${error.toString()}');
      return Left(DefaultServerError());
    } catch (error) {
      debugPrint('Error: ${error.toString()}');
      return Left(DefaultServerError());
    }
  }
}
