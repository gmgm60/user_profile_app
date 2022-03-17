
import 'package:dartz/dartz.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';

import '../../../../core/error/failures.dart';
import '../entity/profile/profile.dart';

abstract class UserRepo {

  Future<Either<Failures,User>> login({required String email,required String password});

  Future<Either<Failures,User>> register({required String email,required String password});

  Future<Either<Failures,Profile>> getProfile({required String token});

  Future<Either<Failures,Unit>> editProfile({required String token,required Profile profile});




}