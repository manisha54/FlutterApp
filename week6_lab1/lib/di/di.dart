
import 'package:get_it/get_it.dart';

import '../data_sources/local/local_data_source.dart';
import '../data_sources/remote/remote_local_source.dart';
import '../repository/user_repository.dart';

final getIt = GetIt.instance;

initModule() {
  getIt.registerLazySingleton<LocalDataSource>(
    () => LocalDataSource(),
  );
  getIt.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSource(),
  );

  getIt.registerLazySingleton<UserRepository>(() =>
      UserRepository(remoteDataSource: getIt(), localDataSource: getIt()));
}
