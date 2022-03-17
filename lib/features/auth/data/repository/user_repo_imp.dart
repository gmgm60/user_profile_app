
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/auth/data/datasources/remote_data_source.dart';
import 'package:user_profile_app/features/auth/data/models/profile/profile_model.dart';
import 'package:user_profile_app/features/auth/data/models/user/user_model.dart';

import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';

import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';

import '../../domain/repository/user_repo.dart';

@Injectable(as: UserRepo)
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
      final UserModel user =await _remoteDataSource.login(email: email, password: password);
      return right(user.toDomain());
    }catch (e){
      return left(Failures.noUser());
    }
  }

  @override
  Future<Either<Failures, User>> register({required String email, required String password}) async{
    try{
      final UserModel user =await _remoteDataSource.register(password: password, email: email);
      return right(user.toDomain());
    }catch (e){
      return left(Failures.serverError());
    }
  }



}