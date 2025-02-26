import 'package:get_it/get_it.dart';
import 'package:kiddocare_test/src/services/api.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<ApiService>(ApiService.new);
}

T getService<T extends Object>() {
  return getIt.get<T>();
}
