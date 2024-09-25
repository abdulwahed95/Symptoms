import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../../../domain/entities/home/symptoms_model.dart';
import '../view_model/symptoms_state.dart';

final symptomsViewModelProvider =
    StateNotifierProvider<SymptomsViewModel, AsyncValue<List<SymptomsModel>>>(
        (ref) {
  return GetIt.instance<SymptomsViewModel>();
});
