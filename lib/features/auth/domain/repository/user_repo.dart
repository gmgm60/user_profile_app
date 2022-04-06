import 'package:dartz/dartz.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';
import 'package:user_profile_app/features/auth/domain/usecases/register.dart';

abstract class UserRepo {

  Future<Either<Failures,User>> login({required String email,required String password});

  Future<Either<Failures,User>> register({required RegisterData registerData});

  Future<Either<Failures,String?>> getToken();

  Future<Either<Failures,Unit>> logout();




}