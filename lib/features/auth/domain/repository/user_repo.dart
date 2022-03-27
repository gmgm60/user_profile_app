
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';

import '../../../../core/error/failures.dart';
import '../entity/profile/profile.dart';

abstract class UserRepo {

  Future<Either<Failures,User>> login({required String email,required String password});

  Future<Either<Failures,User>> register({required String name,required String email,required String password});

  Future<Either<Failures,Profile>> getProfile({required String token});

  Future<Either<Failures,Profile>> editProfile({required String token,required Profile profile});

  Future<Either<Failures,Unit>> saveToken({required String token});

  Future<Either<Failures,String?>> getToken();

  Future<Either<Failures,Unit>> logout();

  Future<String> uploadImage(File image);




}