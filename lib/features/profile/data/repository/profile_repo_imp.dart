import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/profile/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/profile/data/models/profile/profile_model_mapper.dart';
import 'package:user_profile_app/features/profile/data/models/upload_image/upload_image_model.dart';
import 'package:user_profile_app/features/auth/domain/datasources/local_data_store.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/profile/domain/datasources/profile_remote_data_source.dart';
import 'package:user_profile_app/features/profile/domain/repository/profile_repo.dart';

@Singleton(as: ProfileRepo)
class UserRepoImp implements ProfileRepo {
  final ProfileRemoteDataSource _remoteDataSource;
  final LocaleDataStore _localeDataStore;

  UserRepoImp(this._remoteDataSource, this._localeDataStore);

  @override
  Future<Either<Failures, Profile>> editProfile(
      {required Profile profile}) async {
    try {

       ProfileModel profileModel = profile.toModel();
      if(profileModel.image != null && Uri.parse(profileModel.image!).host != ""){
      //  final url = await uploadImage(File(profileModel.image!));
      }
       profileModel = profileModel.copyWith(image: null);
debugPrint("profile model no image : ${profileModel.toJson()}");
      final String token =await _localeDataStore.getToken() ?? "";
       final ProfileDataModel profileDataModel = await _remoteDataSource.editProfile(
          token: token, profileModel: profileModel);
       final ProfileModel profileModel2 = profileDataModel.profileModel;
       return right(profileModel2.toDomain());
    } on DioErrorType catch ( e) {
      return left(Failures.serverError(e.toString()));
    }
  }

  @override
  Future<Either<Failures, Profile>> getProfile() async {
    try {
      final String token =await _localeDataStore.getToken() ?? "";
      final ProfileDataModel profileDataModel =
          await _remoteDataSource.getProfile(token: token);
      final ProfileModel profileModel = profileDataModel.profileModel;
      return right(profileModel.toDomain());
    } catch (e) {

      return left(Failures.serverError(e.toString()));
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
