import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_respo/hot_and_new_respo.dart';

abstract class HotAndNewServices {
  Future<Either<MainFailures, HotAndNewRespo>> getHotAndNewMovieData();
  Future<Either<MainFailures, HotAndNewRespo>> getHotAndNewTvData();
}
