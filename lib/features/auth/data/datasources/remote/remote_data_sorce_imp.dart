import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/auth/data/datasources/remote/rest_api.dart';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';
import 'package:user_profile_app/features/auth/data/models/upload_image/upload_image_model.dart';
import 'package:user_profile_app/features/auth/domain/datasources/remote_data_source.dart';

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImp extends RemoteDataSource {
  final RestApiImp _restApiImp;

  RemoteDataSourceImp(this._restApiImp);

  @override
  Future<ProfileDataModel> editProfile(
      {required String token, required ProfileModel profileModel}) {
    print("profile map : ${profileModel.toJson()}");
    return _restApiImp.editProfile(
      token: token,
      // name: profileModel.name,
      // email: profileModel.email,
      // address: profileModel.address,
      // phone: profileModel.phone,
      // age: profileModel.age,
      // image: profileModel.image,
        profileModel: profileModel
    );
  }

  @override
  Future<ProfileDataModel> getProfile({required String token}) {
    return _restApiImp.getProfile(token: token);
  }

  @override
  Future<ResponseModel> login(
      {required String email, required String password}) {
    return _restApiImp.login(email: email, password: password);
  }

  @override
  Future<ResponseModel> register(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirmation}) {
    return _restApiImp.register(
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation);
  }

  @override
  Future<UploadImageModel> uploadImage(File image) {
    return _restApiImp.uploadImage(image);
  }
}
