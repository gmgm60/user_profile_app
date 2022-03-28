import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';

abstract class UserRepo {

  Future<Either<Failures,User>> login({required String email,required String password});

  Future<Either<Failures,User>> register({required String name,required String email,required String password});

  Future<Either<Failures,Profile>> getProfile();

  Future<Either<Failures,Profile>> editProfile({required Profile profile});

  Future<Either<Failures,Unit>> saveToken({required String token});

  Future<Either<Failures,String?>> getToken();

  Future<Either<Failures,Unit>> logout();

  Future<String> uploadImage(File image);




}