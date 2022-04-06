import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_data.freezed.dart';

part 'register_data.g.dart';

@Freezed()
class RegisterModelData with _$RegisterModelData {
  factory RegisterModelData({
    required String name,
    required String email,
    required String password,
   @JsonKey(name: "password_confirmation") required String passwordConfirmation,
  }) = _RegisterModelData;

  factory RegisterModelData.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelDataFromJson(json);
}
