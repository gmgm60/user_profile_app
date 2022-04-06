import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:user_profile_app/core/error/failures.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';

abstract class ProfileRepo {

  Future<Either<Failures,Profile>> getProfile();

  Future<Either<Failures,Profile>> editProfile({required Profile profile});


  Future<String> uploadImage(File image);



}