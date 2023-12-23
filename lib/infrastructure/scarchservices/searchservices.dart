import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/domain/Search/Scarchservices.dart';
import 'package:netflix/domain/Search/models/scaech_respo/scaech_respo.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';

class Searchservices implements SearchServices {
  @override
  Future<Either<MainFailures, ScaechRespo>> searchMovies({
    required String movieQuary,
  }) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.endPointsSearch);
      //print(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchlist = ScaechRespo.fromJson(response.data);
        return Right(searchlist);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailures.clientFaliure());
    }
  }
}
