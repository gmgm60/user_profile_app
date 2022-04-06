import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/profile/domain/repository/profile_repo.dart';


@injectable
class GetProfile implements UseCase<Profile, NoParams> {
  final ProfileRepo _profileRepo;

  GetProfile(this._profileRepo);

  @override
  Future<Either<Failures,Profile >> call(NoParams noParams) async {
    return _profileRepo.getProfile();
  }
}

class GetProfileData extends Equatable {
  final String token;

  const GetProfileData({required this.token});

  @override
  List<Object?> get props => [token];
}
