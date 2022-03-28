import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/domain/usecases/edit_profile.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_token.dart';
import 'edit_profile_state.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(this._editProfile, this._getToken)
      : super(EditProfileState.init());
  final EditProfile _editProfile;
  final GetToken _getToken;
  Profile profile = const Profile(
    email: "gmgm@ggg.gmmmmm",
    name: "Mohamed Gamal",
    image:
        "/data/user/0/com.example.user_profile_app/cache/image_cropper_1648116440958.jpg",
    phone: "01281139642",
    address: "13st jjjjj",
    age: "11",
  );

  void editImage(String imgPath) {
    emit(EditProfileState.loading());
    profile = profile.copyWith(image: imgPath);
    emit(EditProfileState.init());
  }

  void editName(String? name) {
    if (name != null) {
      profile = profile.copyWith(name: name);
    }
  }

  void editEmail(String? email) {
    if (email != null) {
      profile = profile.copyWith(email: email);
    }
  }

  void editPhone(String? phone) {
    if (phone != null) {
      profile = profile.copyWith(phone: phone);
    }
  }

  void editAddress(String? address) {
    if (address != null) {
      profile = profile.copyWith(address: address);
    }
  }

  void editAge(String? age) {
    if (age != null) {
      profile = profile.copyWith(age: age);
    }
  }

  Future<void> updateProfile() async {
    emit(EditProfileState.loading());
    print("edit profile to : $profile");
      EditProfileData editProfileData =
          EditProfileData(profile: profile);
      final result = await _editProfile(editProfileData);
      result.fold((error) {
        emit(EditProfileState.error());
      }, (profile) {
        emit(EditProfileState.done(profile: profile));
      });
    print("state $state");
  }

}
