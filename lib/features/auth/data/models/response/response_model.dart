
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';
part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed()
class ResponseModel with _$ResponseModel {
  factory ResponseModel({
    required String token,
    required UserModel user,
}) = _registerModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}