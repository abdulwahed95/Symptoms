import '../entities/common/response_wrapper.dart';
import '../entities/home/symptoms_model.dart';

abstract class HomeInterface {
  Future<ResponseWrapper<List<SymptomsModel>>> fetchSymptoms();
}
