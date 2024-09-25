import 'package:get_it/get_it.dart';
import 'catalog/application/catalog_facade_service.dart';
import 'catalog/infrastructure/data_source/home/home_local_data_provider.dart';
import 'catalog/infrastructure/data_source/home/home_remote_data_provider.dart';
import 'catalog/infrastructure/repositories/home_repository.dart';
import 'catalog/presentation/home/view_model/symptoms_state.dart';
import 'catalog/services/network.dart';

final serviceLocator = GetIt.instance;

// From Top To bottom
Future<void> init() async {
  // Catalog
  catalogDependencies();
}

Future<void> catalogDependencies() async {
  // Application Layer - facades
  serviceLocator.registerLazySingleton(() => CatalogFacadeService(
        homeRepository: serviceLocator(),
      ));

  // Infrastructure Layer
  // repositories
  serviceLocator.registerLazySingleton(
    () => HomeRepository(
      homeLocalDataProvider: serviceLocator(),
      homeRemoteDataProvider: serviceLocator(),
    ),
  );

  //data sources
  serviceLocator.registerLazySingleton(
    () => HomeLocalDataProvider(),
  );
  serviceLocator.registerLazySingleton(
    () => HomeRemoteDataProvider(
      dio: serviceLocator(),
    ),
  );

  // view-model
  serviceLocator.registerLazySingleton(
    () => SymptomsViewModel(catalogFacadeService: serviceLocator()),
  );

  // Common and core
  serviceLocator.registerLazySingleton(
    () => getNetworkObject(),
  );
}
