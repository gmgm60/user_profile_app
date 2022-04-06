import 'package:user_profile_app/features/profile/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';

extension ProfileModelMapper on ProfileModel {

  Profile toDomain() {
    return Profile(
        email: email,
        name: name,
        image: Uri.parse(image!).host == ""
            ? "https://i.ibb.co/C0vfzf4/image-cropper-1649232699588.jpg"
            : image!,
        phone: phone,
        address: address,
        age: age);
  }
}

extension ProfileMapper on Profile {
 ProfileModel toModel() {
    return ProfileModel(
        email: email,
        name: name,
        image: image,
        phone: phone,
        address: address,
        age: age,
        id: 0,
        emailVerifiedAt: '');
  }

}
