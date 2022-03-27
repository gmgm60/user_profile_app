import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_profile.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_token.dart';
import 'package:user_profile_app/features/auth/domain/usecases/logout.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_state.dart';

@injectable
class ViewProfileCubit extends Cubit<ViewProfileState> {
  final GetToken _getToken;
  final GetProfile _getProfile;
  final Logout _logout;

  ViewProfileCubit(this._getProfile, this._getToken, this._logout)
      : super(ViewProfileState.init());

  Future<void> getProfile() async {
    await Future.delayed(const Duration(microseconds: 100));
    emit(ViewProfileState.loading());
    final token = await getToken();
    if (token != null) {
      GetProfileData getProfileData = GetProfileData(token: token);
      final result = await _getProfile(getProfileData);
      result.fold(
          (error) => emit(
                ViewProfileState.error(error.toString()),
              ), (profile) {
      //  this.profile = profile;
        emit(ViewProfileState.done(profile: profile));
      });
    } else {
      emit(ViewProfileState.notLogin());
    }
  }

  Future<String?> getToken() async {
    final result = await _getToken(NoParams());
    return result.fold((localStoreError) {
      emit(ViewProfileState.localStorageError());
      return null;
    }, (token) {
      return token;
    });
  }

  Future<void> logout()async{
    emit(ViewProfileState.loading());
    await _logout(NoParams());
    emit(ViewProfileState.init());
  }

  Future<void> loadNewProfile()async {
   await getProfile();
   // emit(ViewProfileState.init());
  }
}
