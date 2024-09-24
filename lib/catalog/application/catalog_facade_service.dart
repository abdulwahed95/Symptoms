import '../domain/entities/common/response_wrapper.dart';
import '../domain/entities/home/symptoms_model.dart';
import '../infrastructure/repositories/home_repository.dart';

class CatalogFacadeService {
  const CatalogFacadeService({
    this.homeRepository,
  });

  final HomeRepository? homeRepository;

  Future<ResponseWrapper<List<Symptoms>>> fetchUsers() async {
    return homeRepository!.fetchUsers();
  }
}
