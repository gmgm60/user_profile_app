
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_profile.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_state.dart';

@Injectable()
class ViewProfileCubit extends Cubit<ViewProfileState>{
  Profile profile = const Profile(
    email: "gmgm@g.gm",
    name: "Mohamed Gamal",
    image:"/data/user/0/com.example.user_profile_app/cache/image_cropper_1647786976631.jpg",
    phone: "01281139642",
    address: "13st ",
    age: "66",
  );
  final GetProfile _getProfile;
  ViewProfileCubit(this._getProfile) : super(ViewProfileState.init());

  Future<void> getProfile()async{
    emit(ViewProfileState.loading());
    const GetProfileData getProfileData = GetProfileData(token: "");
    final result = await _getProfile(getProfileData);
    result.fold((error) => emit(ViewProfileState.error()), (profile) {

      emit(ViewProfileState.done());
    });
  }


}