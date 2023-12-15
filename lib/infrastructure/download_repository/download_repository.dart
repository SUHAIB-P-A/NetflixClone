import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadRepo)
class DownloadRepository implements IDownloadRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getdownloadsimages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.endPointsDownload);
      //print(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadlist = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        print(downloadlist);
        return Right(downloadlist);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailures.clientFaliure());
    }
  }
}
