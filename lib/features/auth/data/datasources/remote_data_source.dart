

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:user_profile_app/features/auth/data/models/user_model.dart';

part 'remote_data_source.g.dart';

@injectable
@RestApi(baseUrl: "url")
abstract class RemoteDataSource {

  @factoryMethod
  factory RemoteDataSource(Dio dio) = _RemoteDataSource;

  @POST("/login")
  Future<UserModel> login();

  @POST("/register")
  Future<UserModel> register();





}