import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';
import 'package:user_profile_app/features/auth/data/models/upload_image/upload_image_model.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';
import 'package:user_profile_app/features/auth/domain/datasources/local_data_store.dart';
import 'package:user_profile_app/features/auth/domain/datasources/remote_data_source.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';
import 'package:user_profile_app/features/auth/domain/repository/user_repo.dart';

@Singleton(as: UserRepo)
class UserRepoImp implements UserRepo {
  final RemoteDataSource _remoteDataSource;
  final LocaleDataStore _localeDataStore;

  UserRepoImp(this._remoteDataSource, this._localeDataStore);

  @override
  Future<Either<Failures, Profile>> editProfile(
      {required String token, required Profile profile}) async {
    try {
      if(Uri.parse(profile.image).host == "" ? true : false){
        final url = await uploadImage(File(profile.image));
        profile = profile.copyWith(image: url);
      }
       ProfileModel profileModel = ProfileModel.toModel(profile);
      print("profile model : ${profileModel}");
       final ProfileDataModel profileDataModel = await _remoteDataSource.editProfile(
          token: token, profileModel: profileModel);
       final ProfileModel profileModel2 = profileDataModel.profileModel;
       print("profileDataModel : ${profileDataModel}");
       return right(profileModel2.toDomain());
    } on DioErrorType catch ( e) {
      print("DioErrorType res : ${DioErrorType.response.toString()}");
      print("get profile error: $e");
      return left(Failures.serverError(e.toString()));
    }
  }

  @override
  Future<Either<Failures, Profile>> getProfile({required String token}) async {
    try {
      final ProfileDataModel profileDataModel =
          await _remoteDataSource.getProfile(token: token);
      final ProfileModel profileModel = profileDataModel.profileModel;
      return right(profileModel.toDomain());
    } catch (e) {

      return left(Failures.serverError(e.toString()));
    }
  }

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
      print("login error $e");
      return left(Failures.noUser());
    }
  }

  @override
  Future<Either<Failures, User>> register(
      {required String name,
      required String email,
      required String password}) async {
    try {
      print("start register");
      final ResponseModel register = await _remoteDataSource.register(
          name: name,
          password: password,
          email: email,
          passwordConfirmation: password);
      final UserModel userModel = register.user;
      await _localeDataStore.saveToken(register.token);
      return right(userModel.toDomain());
    } catch (e) {
      return left(Failures.serverError(e.toString()));
    }
  }

  @override
  Future<Either<Failures, String?>> getToken() async {
    try {
      final token = await _localeDataStore.getToken();
      return right(token);
    } catch (e) {
      return left(Failures.localStorageError());
    }
  }

  @override
  Future<Either<Failures, Unit>> saveToken({required String token}) async {
    try {
      await _localeDataStore.saveToken(token);
      return right(unit);
    } catch (e) {
      return left(Failures.localStorageError());
    }
  }

  @override
  Future<Either<Failures, Unit>> logout()async {
    try {
      //Todo : logout from api
      await _localeDataStore.deleteToken();
      return right(unit);
    } catch (e) {
      return left(Failures.localStorageError());
    }
  }

  @override
  Future<String> uploadImage(File image)async  {
    final UploadImageModel uploadImageModel = await _remoteDataSource.uploadImage(image);
  final String url = uploadImageModel.data.url;
  print("url : $url");
    return url;
  }




}
