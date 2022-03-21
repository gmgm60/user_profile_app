import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:user_profile_app/features/auth/data/models/login/login_model.dart';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/register/register_model.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';

part 'remote_data_source.g.dart';

@injectable
@RestApi(baseUrl: "https://mega-user-profile.herokuapp.com/api/")
abstract class RemoteDataSource {
  @factoryMethod
  factory RemoteDataSource(Dio dio) = _RemoteDataSource;

  @POST("login")
  Future<LoginModel> login({
    @Query("email") required String email,
    @Query("password") required String password,
  });

  @POST("register")
  Future<RegisterModel> register({
    @Query("name") String name = "no name",
    @Query("email") required String email,
    @Query("password") required String password,
    @Query("password_confirmation") required String passwordConfirmation,
  });

  @POST("/profile")
  Future<ProfileModel> getProfile({
    @Query("token") required String token,
  });

  @PUT("/profile")
  Future<ProfileModel> editProfile({
    @Query("token") required String token,
    @Query("profile") required ProfileModel profileModel,
  });
}
