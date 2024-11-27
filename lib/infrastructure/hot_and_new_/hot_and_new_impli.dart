import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_respo/hot_and_new_respo.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_services.dart';

class HotAndNewImplimentation implements HotAndNewServices {
  @override
  Future<Either<MainFailures, HotAndNewRespo>> getHotAndNewMovieData() async{
    
  }

  @override
  Future<Either<MainFailures, HotAndNewRespo>> getHotAndNewTvData() async{
    
  }
  
}