import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entity/user/user.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
@Freezed()
class UserModel with _$UserModel {
  UserModel._();
  factory UserModel({
    required int id,
    required String email,
    required String name,
    @Default("")String token,
  }) = _userModel ;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);


 User toDomain(){
    return User(id: id, email: email, name: name, token: token);
  }

 factory UserModel.toModel(User user){
    return UserModel(id: user.id, email: user.email, name: user.name, token: user.token);
  }
}
