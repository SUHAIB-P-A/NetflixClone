

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getit = GetIt.instance;

@InjectableInit()
Future<void> configinjuction()async{
 await init(getit,Environment.prod);
}