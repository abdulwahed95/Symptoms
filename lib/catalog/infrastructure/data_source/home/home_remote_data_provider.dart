import 'package:dio/dio.dart';
import 'package:symptoms_statistics/catalog/domain/entities/home/symptoms_model.dart';

import '../../../../common/config/app_urls.dart';

/// this class for Remote DB

class HomeRemoteDataProvider {
  HomeRemoteDataProvider({required this.dio});
  final Dio dio;

  Future<dynamic> fetchSymptoms() async {
    Response response = await dio.get(
      AppUrls.symptoms,
    );
    return response;
  }

  Future<dynamic> patchSymptoms(SymptomsModel symptoms) async {
    Response response =
        await dio.patch(AppUrls.symptom, data: symptoms.toJson());
    return response;
  }
}
