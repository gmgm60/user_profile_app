
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/profile/profile.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';
@Freezed()
class ProfileModel with _$ProfileModel {
  ProfileModel._();
  factory ProfileModel({
    required String name,
    required String email,
    required String image,
    required String phone,
    required String address,
    required String age,
  }) = _profileModel ;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  factory ProfileModel.toModel(Profile profile){
    return ProfileModel(email:profile.email,name: profile.name, image: profile.image, phone: profile.phone, address: profile.address, age: profile.age);
  }

  toDomain (){
    return Profile(email:email ,name:name, image: image, phone: phone, address: address, age: age);
  }

}

