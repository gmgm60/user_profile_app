

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entity/user/user.dart';
import '../repository/user_repo.dart';

@injectable
class Register implements UseCase<User, RegisterData> {
  final UserRepo _userRepo;

  Register(this._userRepo);

  @override
  Future<Either<Failures, User>> call(RegisterData params) async {
    return _userRepo.register(email: params.email, password: params.password);
  }
}

class RegisterData extends Equatable {
  final String email;
  final String password;

  const RegisterData({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}