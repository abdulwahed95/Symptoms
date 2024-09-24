import 'package:dio/dio.dart';
import 'package:symptoms_statistics/catalog/domain/entities/common/response_type.dart'
    as res_type;
import '../../domain/entities/common/response_wrapper.dart';
import '../../domain/entities/home/symptoms_model.dart';
import '../../domain/interfaces/home_interface.dart';
import '../data_source/home/home_local_data_provider.dart';
import '../data_source/home/home_remote_data_provider.dart';

class HomeRepository implements HomeInterface {
  HomeRepository({
    required this.homeLocalDataProvider,
    required this.homeRemoteDataProvider,
  });

  final HomeLocalDataProvider homeLocalDataProvider;
  final HomeRemoteDataProvider homeRemoteDataProvider;

  @override
  Future<ResponseWrapper<List<Symptoms>>> fetchUsers() async {
    try {
      Response response = await homeRemoteDataProvider.fetchUsers();
      try {
        if (response.statusCode == 200) {
          var res = ResponseWrapper<List<Symptoms>>();
          res.responseType = res_type.ResponseType.SUCCESS;
          return res;
        } else {
          var res = ResponseWrapper<List<Symptoms>>();
          return res;
        }
      } on DioException catch (e) {
        if (e.response!.statusCode == 200) {
          var res = ResponseWrapper<List<Symptoms>>();
          res.responseType = res_type.ResponseType.SERVER_ERROR;
          return res;
        } else {
          var res = ResponseWrapper<List<Symptoms>>();
          res.responseType = res_type.ResponseType.SERVER_ERROR;
          return res;
        }
      } catch (e) {
        var res = ResponseWrapper<List<Symptoms>>();
        res.responseType = res_type.ResponseType.CLIENT_ERROR;
        return res;
      }
    } catch (e) {
      var res = ResponseWrapper<List<Symptoms>>();
      res.responseType = res_type.ResponseType.CLIENT_ERROR;
      return res;
    }
  }
}
