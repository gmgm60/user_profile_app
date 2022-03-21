import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/user_repo.dart';

@injectable
class GetProfile implements UseCase<Profile, GetProfileData> {
  final UserRepo _userRepo;

  GetProfile(this._userRepo);

  @override
  Future<Either<Failures,Profile >> call(GetProfileData params) async {
    return _userRepo.getProfile(token: params.token);
  }
}

class GetProfileData extends Equatable {
  final String token;

  const GetProfileData({required this.token});

  @override
  List<Object?> get props => [token];
}