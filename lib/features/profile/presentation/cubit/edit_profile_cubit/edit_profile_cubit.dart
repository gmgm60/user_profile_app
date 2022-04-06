import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/profile/domain/use_cases/edit_profile.dart';
import 'edit_profile_state.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(this._editProfile) : super(EditProfileState.init());

  final EditProfile _editProfile;
  Profile profile = const Profile(
    email: "gmgm@ggg.gmmmmm",
    name: "Mohamed Gamal",
    image: "",
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
