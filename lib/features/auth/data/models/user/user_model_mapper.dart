import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';

extension UserMapper on UserModel {
  User toDomain(){
    return User(id: id, email: email, name: name, token: token);
  }

}