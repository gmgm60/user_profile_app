

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';
import 'package:user_profile_app/features/auth/domain/repository/user_repo.dart';

@injectable
class GetToken implements UseCase<String?, NoParams> {
  final UserRepo _userRepo;

  GetToken(this._userRepo);

  @override
  Future<Either<Failures, String?>> call(NoParams params) async{
    return _userRepo.getToken();
  }


}