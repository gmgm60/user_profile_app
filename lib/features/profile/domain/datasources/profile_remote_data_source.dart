import 'dart:io';

import 'package:user_profile_app/features/profile/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/profile/data/models/upload_image/upload_image_model.dart';

abstract class ProfileRemoteDataSource {

  Future<ProfileDataModel> getProfile({
   required String token,
  });

  Future<ProfileDataModel> editProfile({
    required String token,
    required ProfileModel profileModel,
  });

  Future<UploadImageModel> uploadImage(File image);


}
