import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/domain/datasource/beer_remote_datasource.dart';
import 'package:test_exercise/domain/repositories/beer_repository.dart';
import 'package:test_exercise/error/failure.dart';

class BeerRepositoryImpl implements BeerRepository {
  final BeerRemoteDataSource remoteDataSource;

  BeerRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<BeerItem>>> loadBeerList() async {
    try {
      return Right(await remoteDataSource.loadBeers());
    } on DioException catch (error) {
      debugPrint('DioException: ${error.toString()}');
      return Left(DefaultServerError());
    } catch (error) {
      debugPrint('Error: ${error.toString()}');
      return Left(DefaultServerError());
    }
  }
}
