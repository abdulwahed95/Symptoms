import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/catalog_facade_service.dart';
import '../../../domain/entities/common/response_type.dart';
import '../../../domain/entities/home/symptoms_model.dart';

class SymptomsViewModel extends StateNotifier<AsyncValue<List<SymptomsModel>>> {
  final CatalogFacadeService catalogFacadeService;

  SymptomsViewModel({required this.catalogFacadeService})
      : super(const AsyncValue.loading());

  Future<void> fetchSymptoms() async {
    try {
      final response = await catalogFacadeService.fetchSymptoms();
      if (response.responseType == ResponseType.SUCCESS &&
          response.data != null) {
        state = AsyncValue.data(response.data!);
      } else {
        throw Exception(response.message ?? 'Unknown error');
      }
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
