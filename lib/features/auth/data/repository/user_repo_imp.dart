
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/auth/data/datasources/remote_data_source.dart';
import 'package:user_profile_app/features/auth/data/models/login/login_model.dart';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/register/register_model.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';

import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';

import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';
import 'package:user_profile_app/features/auth/domain/repository/user_repo.dart';
import 'package:user_profile_app/generated/assets.dart';


@Singleton(as: UserRepo)
class UserRepoImp implements UserRepo {
  final RemoteDataSource _remoteDataSource;

  UserRepoImp(this._remoteDataSource);

  @override
  Future<Either<Failures, Unit>> editProfile({required String token, required Profile profile}) async{
    try{
      final ProfileModel profileModel =await _remoteDataSource.editProfile(token: token, profileModel: ProfileModel.toModel(profile));
      return right(profileModel.toDomain());
    }catch (e){
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, Profile>> getProfile({required String token}) async{
    try{
      final ProfileModel profileModel =await _remoteDataSource.getProfile(token: token);
      return right(profileModel.toDomain());
    }catch (e){
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, User>> login({required String email, required String password})async {
    try{
      final LoginModel login =await _remoteDataSource.login(email: email, password: password);
      final UserModel userModel = UserModel(id: "", email: email, name: "",token: login.token);
      return right(userModel.toDomain());
    }catch (e){
      print("login error $e");
      return left(Failures.noUser());
    }
  }

  @override
  Future<Either<Failures, User>> register({required String email, required String password}) async{
    try{
      final RegisterModel register =await _remoteDataSource.register(password: password, email: email, passwordConfirmation: password);
     final LoginModel login = await _remoteDataSource.login(email: email, password: password);
     final UserModel userModel = UserModel(id: register.user.id, email: register.user.email, name: register.user.name,token:login.token);
      return right(userModel.toDomain());
    }catch (e){
      return left(Failures.serverError());
    }
  }



}