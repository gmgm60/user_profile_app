import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@Freezed()
class ProfileModel with _$ProfileModel {
  ProfileModel._();

  factory ProfileModel({
    int? id,
    required String name,
    required String email,
    @Default("") @JsonKey(name: "email_verified_at") String emailVerifiedAt,
    @Default("") String address,
    @Default("") String phone,
    @Default("") String? image,
    @Default("") String age,
  }) = _profileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);


}

@Freezed()
class ProfileDataModel with _$ProfileDataModel {
  factory ProfileDataModel({
    @JsonKey(name: "data") required ProfileModel profileModel,
    required String message,
    required int status,
  }) = _profileDataModel;

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataModelFromJson(json);
}
