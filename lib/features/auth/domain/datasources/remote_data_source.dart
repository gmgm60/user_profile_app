import 'dart:io';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';
import 'package:user_profile_app/features/auth/data/models/upload_image/upload_image_model.dart';

abstract class RemoteDataSource {
  Future<ResponseModel> login({
    required String email,
    required String password,
  });

  Future<ResponseModel> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  });

  Future<ProfileDataModel> getProfile({
   required String token,
  });

  Future<ProfileDataModel> editProfile({
    required String token,
    required ProfileModel profileModel,
  });

  Future<UploadImageModel> uploadImage(File image);
}
