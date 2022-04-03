import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';
import 'package:user_profile_app/features/auth/data/models/upload_image/upload_image_model.dart';
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
    @Query("name") required String name,
    @Query("email") required String email,
    @Query("password") required String password,
    @Query("password_confirmation") required String passwordConfirmation,
  });

  @GET("user")
  Future<ProfileDataModel> getProfile({
    @Header("Authorization") required String token,
  });

  @POST("edit_user")
  Future<ProfileDataModel> editProfile({
    @Header("Authorization") required String token,
    @Body() required ProfileModel profileModel,
  });

  @POST("https://api.imgbb.com/1/upload")
  @MultiPart()
  Future<UploadImageModel> uploadImage(
   @Part() File image, {
   @Part() @Query("key") String token = "751a8fa64c568b7f68f4514c7a01a1e9",
  });

  @POST("logout")
  Future<dynamic> logout({required String token}) ;
}
