import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/data/repository/user_repo_imp.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';

import '../repository/user_repo.dart';

@injectable
class Logout implements UseCase<Unit, NoParams> {
  final UserRepo _userRepo;

  Logout(this._userRepo);

  @override
  Future<Either<Failures, Unit>> call(NoParams params) async {
    return _userRepo.logout();
  }
}

