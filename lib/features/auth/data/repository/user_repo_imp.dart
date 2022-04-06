import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/auth/data/models/register_data/register_data.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model_mapper.dart';
import 'package:user_profile_app/features/auth/domain/datasources/local_data_store.dart';
import 'package:user_profile_app/features/auth/domain/datasources/remote_data_source.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';
import 'package:user_profile_app/features/auth/domain/repository/user_repo.dart';
import 'package:user_profile_app/features/auth/domain/usecases/register.dart';

@Singleton(as: UserRepo)
class UserRepoImp implements UserRepo {
  final RemoteDataSource _remoteDataSource;
  final LocaleDataStore _localeDataStore;

  UserRepoImp(this._remoteDataSource, this._localeDataStore);

  @override
  Future<Either<Failures, User>> login(
      {required String email, required String password}) async {
    try {
      final ResponseModel login =
          await _remoteDataSource.login(email: email, password: password);
      final UserModel userModel = login.user.copyWith(token: login.token);
      await _localeDataStore.saveToken(login.token);
      return right(userModel.toDomain());
    } catch (e) {
      return left(Failures.serverError("Email or Password Not Match"));
    }
  }

  @override
  Future<Either<Failures, User>> register(
      {required RegisterData registerData}) async {
    try {
      final RegisterModelData registerModelData = registerData.toModel();
      final ResponseModel register = await _remoteDataSource.register(
        registerModelData: registerModelData);
      final UserModel userModel = register.user;
      await _localeDataStore.saveToken(register.token);
      return right(userModel.toDomain());
    } on DioError catch (e) {
      final Map<String,dynamic> errors = e.response?.data["errors"];
      String errorList ="";
      errors.values.forEach((element) {
        errorList +=element[0].toString();
      });
      print("errorList:$errorList");
      return left(Failures.serverError(errorList));
    }
  }

  @override
  Future<Either<Failures, String?>> getToken() async {
    try {
      final token = await _localeDataStore.getToken();
      return right(token);
    }on DioError catch (e) {
      return left(Failures.localStorageError(e.response?.data ?? ""));
    }
  }


  @override
  Future<Either<Failures, Unit>> logout()async {
    try {
      final String token =await _localeDataStore.getToken() ?? "";
      await _localeDataStore.deleteToken();
      await _remoteDataSource.logout(token : token );
      return right(unit);
    } catch (e) {
      return right(unit);
    }
  }




}
