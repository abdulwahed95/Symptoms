import 'package:dio/dio.dart';

import '../../../../common/config/app_urls.dart';

/// this class for Remote DB

class HomeRemoteDataProvider {
  HomeRemoteDataProvider({required this.dio});
  final Dio dio;

  Future<dynamic> fetchUsers() async {
    Response response = await dio.get(
      AppUrls.users,
    );
    return response;
  }
}
