import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/profile/data/datasources/remote/rest_api.dart';
import 'package:user_profile_app/features/profile/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/profile/data/models/upload_image/upload_image_model.dart';
import 'package:user_profile_app/features/profile/domain/datasources/profile_remote_data_source.dart';

@Injectable(as: ProfileRemoteDataSource)
class RemoteDataSourceImp extends ProfileRemoteDataSource {
  final RestApiImp _restApiImp;

  RemoteDataSourceImp(this._restApiImp);

  @override
  Future<ProfileDataModel> editProfile(
      {required String token, required ProfileModel profileModel}) {
    return _restApiImp.editProfile(token: token, profileModel: profileModel);
  }

  @override
  Future<ProfileDataModel> getProfile({required String token}) {
    return _restApiImp.getProfile(token: token);
  }


  @override
  Future<UploadImageModel> uploadImage(File image) {
    return _restApiImp.uploadImage(image);
  }

}
