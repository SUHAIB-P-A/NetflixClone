import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_respo/hot_and_new_respo.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_services.dart';

@LazySingleton(as: HotAndNewServices)
class HotAndNewImplimentation implements HotAndNewServices {
  @override
  Future<Either<MainFailures, HotAndNewRespo>> getHotAndNewMovieData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.endpointsHotandNewMovie,
      );
      log(ApiEndPoints.endpointsHotandNewMovie.toString());
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final hotandnewmovielist = HotAndNewRespo.fromJson(response.data);
        return Right(hotandnewmovielist);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFaliure());
    }
  }

  @override
  Future<Either<MainFailures, HotAndNewRespo>> getHotAndNewTvData() async{
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.endpointsHotandNewTv,
      );
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final hotandnewtvlist = HotAndNewRespo.fromJson(response.data);
        return Right(hotandnewtvlist);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFaliure());
    }
  }
}
