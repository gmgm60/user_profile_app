
import 'package:dartz/dartz.dart';

import 'package:user_profile_app/core/error/failures.dart';

import 'package:user_profile_app/features/auth/domain/entity/profile.dart';

import 'package:user_profile_app/features/auth/domain/entity/user.dart';

import '../../domain/repository/user_repo.dart';

class UserRepoImp implements UserRepo {
  @override
  Future<Either<Failures, Unit>> editProfile({required String token, required Profile profile}) {
    // TODO: implement editProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, User>> getProfile({required String token}) {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, User>> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, User>> register({required String email, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }



}