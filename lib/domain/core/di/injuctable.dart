

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/di/injuctable.config.dart';

final getit = GetIt.instance;

@InjectableInit()
Future<void> configinjuction()async{
 await getit.init(environment: Environment.prod);
}

