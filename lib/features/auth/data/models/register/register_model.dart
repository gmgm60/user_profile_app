
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';
part 'register_model.freezed.dart';
part 'register_model.g.dart';

@Freezed()
class RegisterModel with _$RegisterModel {
  factory RegisterModel({
    required String message,
    required UserModel user,
}) = _registerModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}