
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';
import 'package:user_profile_app/features/auth/domain/usecases/edit_profile.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';

import 'edit_profile_state.dart';

@Injectable()
class EditProfileCubit extends Cubit<EditProfileState>{
  EditProfileCubit(this._editProfile) : super(EditProfileState.init());
  final User user = getIt<LoginCubit>().user;
  final EditProfile _editProfile;
  Profile profile = const Profile(
    email: "gmgm@g.gm",
    name: "Mohamed Gamal",
    image:"/data/user/0/com.example.user_profile_app/cache/image_cropper_1647786976631.jpg",
    phone: "01281139642",
    address: "13st ",
    age: "66",
  );

  void editImage(String imgPath){
    emit(EditProfileState.loading());
    profile = profile.copyWith(image:imgPath );
    emit(EditProfileState.done());
  }

  void editName(String? name){
    if (name != null) {
      profile = profile.copyWith(name: name);
    }
  }
  void editEmail(String? email){
    if (email != null) {
      profile = profile.copyWith(email: email);
    }
  }
  void editPhone(String? phone){
    if (phone != null) {
      profile = profile.copyWith(phone: phone);
    }
  }
  void editAddress(String? address){
    if (address != null) {
      profile = profile.copyWith(address: address);
    }
  }
  void editAge(String? age){
    if (age != null) {
      profile = profile.copyWith(age: age);
    }
  }

 Future<void> updateProfile() async{
emit(EditProfileState.loading());
EditProfileData editProfileData = EditProfileData(profile: profile, token: user.token);
final result = await _editProfile(editProfileData);
result.fold((error) {
  emit(EditProfileState.error());
}, (unit) {
  emit(EditProfileState.done());
});
 }


}