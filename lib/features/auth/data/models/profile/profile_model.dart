import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entity/profile/profile.dart';

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
    @Default("") String image,
    @Default("") String age,
  }) = _profileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  factory ProfileModel.toModel(Profile profile) {
    return ProfileModel(
        email: profile.email,
        name: profile.name,
        image: profile.image,
        phone: profile.phone,
        address: profile.address,
        age: profile.age,
        id: 0,
        emailVerifiedAt: '');
  }

 Profile toDomain() {
    return Profile(
        email: email,
        name: name,
        image: image,
        phone: phone,
        address: address,
        age: age);
  }
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
