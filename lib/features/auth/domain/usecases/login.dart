import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/data/repository/user_repo_imp.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';

import '../repository/user_repo.dart';

@injectable
class Login implements UseCase<User, LoginData> {
  final UserRepo _userRepo;

  Login(this._userRepo);

  @override
  Future<Either<Failures, User>> call(LoginData params) async {
    return _userRepo.login(email: params.email, password: params.password);
  }
}

class LoginData extends Equatable {
  final String email;
  final String password;

  const LoginData({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
