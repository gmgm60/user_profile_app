

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/profile_cubit/profile_cubit_state.dart';

class ProfileCubit extends Cubit<ProfileCubitState> {

  ProfileCubit() : super(ProfileCubitState.init());

}