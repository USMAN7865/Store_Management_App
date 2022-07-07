import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:store_management_app/app/constant.dart';
import 'package:store_management_app/data/Responses/baseResponse.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServerClient {
  factory AppServerClient(Dio dio, {String baseUrl}) = _AppServerClient;

  @POST("/Customer/Login")
  Future<Authentication> login();
}
