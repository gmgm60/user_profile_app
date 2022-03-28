import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_profile.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_state.dart';

@injectable
class ViewProfileCubit extends Cubit<ViewProfileState> {
  final GetProfile _getProfile;

  ViewProfileCubit(this._getProfile) : super(ViewProfileState.init());

  Future<void> getProfile() async {
    await Future.delayed(const Duration(microseconds: 100));
    emit(ViewProfileState.loading());
    final result = await _getProfile(NoParams());
    result.fold(
        (error) => emit(
              ViewProfileState.error(error.toString()),
            ), (profile) {
      emit(ViewProfileState.done(profile: profile));
    });
  }

  void updateProfile(Profile profile){
    emit(ViewProfileState.done(profile: profile));
  }


}
