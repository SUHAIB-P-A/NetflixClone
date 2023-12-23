import 'package:dartz/dartz.dart';
import 'package:netflix/domain/Search/models/scaech_respo/scaech_respo.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';

abstract class SearchServices {
  Future<Either<MainFailures, ScaechRespo>> searchMovies({
    required String movieQuary,
  });
}
