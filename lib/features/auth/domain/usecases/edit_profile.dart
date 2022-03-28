import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/domain/repository/user_repo.dart';



@injectable
class EditProfile implements UseCase<Profile, EditProfileData> {
  final UserRepo _userRepo;

  EditProfile(this._userRepo);

  @override
  Future<Either<Failures, Profile>> call(EditProfileData params) async {
    return _userRepo.editProfile( profile: params.profile);
  }
}

class EditProfileData extends Equatable {
  final Profile profile;

  const EditProfileData({required this.profile,});

  @override
  List<Object?> get props => [profile];
}
