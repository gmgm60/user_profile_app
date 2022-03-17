
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/user.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
@Freezed()
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String email,
    required String name,
    required String token,
  }) = _userModel ;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

}

extension UserModelToDomain on User {

  toDomain(UserModel userModel){
   return User(id: userModel.id, email: userModel.email, name: userModel.name, token: userModel.token);
  }

  toModel(){
    return UserModel(id: id, email: email, name: name, token: token);
  }


}