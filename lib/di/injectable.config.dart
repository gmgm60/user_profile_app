// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/auth/data/datasources/remote_data_source.dart' as _i4;
import '../features/auth/data/repository/user_repo_imp.dart' as _i6;
import '../features/auth/domain/repository/user_repo.dart' as _i5;
import '../features/auth/domain/usecases/edit_profile.dart' as _i7;
import '../features/auth/domain/usecases/get_profile.dart' as _i9;
import '../features/auth/domain/usecases/login.dart' as _i10;
import '../features/auth/domain/usecases/register.dart' as _i11;
import '../features/auth/presentation/cubit/edit_profile_cubit/edit_profile_cubit.dart'
    as _i8;
import '../features/auth/presentation/cubit/login_cubit/login_cubit.dart'
    as _i13;
import '../features/auth/presentation/cubit/view_profile_cubit/view_profile_cubit.dart'
    as _i12;
import 'module/dio.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.RemoteDataSource>(() => _i4.RemoteDataSource(get<_i3.Dio>()));
  gh.singleton<_i5.UserRepo>(_i6.UserRepoImp(get<_i4.RemoteDataSource>()));
  gh.factory<_i7.EditProfile>(() => _i7.EditProfile(get<_i5.UserRepo>()));
  gh.factory<_i8.EditProfileCubit>(
      () => _i8.EditProfileCubit(get<_i7.EditProfile>()));
  gh.factory<_i9.GetProfile>(() => _i9.GetProfile(get<_i5.UserRepo>()));
  gh.factory<_i10.Login>(() => _i10.Login(get<_i5.UserRepo>()));
  gh.factory<_i11.Register>(() => _i11.Register(get<_i5.UserRepo>()));
  gh.factory<_i12.ViewProfileCubit>(
      () => _i12.ViewProfileCubit(get<_i9.GetProfile>()));
  gh.singleton<_i13.LoginCubit>(
      _i13.LoginCubit(get<_i10.Login>(), get<_i11.Register>()));
  return get;
}

class _$MyDioInject extends _i14.MyDioInject {}
