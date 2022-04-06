import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:user_profile_app/features/auth/data/models/register_data/register_data.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';
part 'rest_api.g.dart';

@injectable
@RestApi(baseUrl: "https://api-sanctum-package.herokuapp.com/api/")
abstract class RestApiImp {
  @factoryMethod
  factory RestApiImp(Dio dio) = _RestApiImp;

  @POST("login")
  Future<ResponseModel> login({
    @Query("email") required String email,
    @Query("password") required String password,
  });

  @POST("register")
  Future<ResponseModel> register({
    @Body() required RegisterModelData registerModelData
  });

  @POST("logout")
  Future<dynamic> logout({required String token}) ;
}
