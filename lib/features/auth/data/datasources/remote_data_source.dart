import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';

part 'remote_data_source.g.dart';

@injectable
@RestApi(baseUrl: "url")
abstract class RemoteDataSource {
  @factoryMethod
  factory RemoteDataSource(Dio dio) = _RemoteDataSource;

  @POST("/login")
  Future<UserModel> login({
    @Query("email") required String email,
    @Query("password") required String password,
  });

  @POST("/register")
  Future<UserModel> register({
    @Query("email") required String email,
    @Query("password") required String password,
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
