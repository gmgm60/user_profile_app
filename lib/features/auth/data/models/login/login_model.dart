
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';
@Freezed()
class LoginModel with _$LoginModel {
factory LoginModel({
  @JsonKey(name: "access_token")
  required String token,
}) = _loginModel ;
factory LoginModel.fromJson(Map<String, dynamic> json) =>
    _$LoginModelFromJson(json);
}