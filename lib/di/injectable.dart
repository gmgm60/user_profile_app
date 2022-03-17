import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureInjection({String? environment}){
  $initGetIt(getIt,environment: environment  );
}

abstract class InjectInv {
  static const dev = "dev";
  static const test = "test";
  static const prod = "prod";

}



