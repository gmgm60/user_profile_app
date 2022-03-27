// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../features/auth/data/datasources/local/local_data_store_imp.dart'
    as _i7;
import '../features/auth/data/datasources/remote/remote_data_sorce_imp.dart'
    as _i9;
import '../features/auth/data/datasources/remote/rest_api.dart' as _i4;
import '../features/auth/data/repository/user_repo_imp.dart' as _i11;
import '../features/auth/domain/datasources/local_data_store.dart' as _i6;
import '../features/auth/domain/datasources/remote_data_source.dart' as _i8;
import '../features/auth/domain/repository/user_repo.dart' as _i10;
import '../features/auth/domain/usecases/edit_profile.dart' as _i12;
import '../features/auth/domain/usecases/get_profile.dart' as _i13;
import '../features/auth/domain/usecases/get_token.dart' as _i14;
import '../features/auth/domain/usecases/login.dart' as _i15;
import '../features/auth/domain/usecases/logout.dart' as _i17;
import '../features/auth/domain/usecases/register.dart' as _i18;
import '../features/auth/presentation/cubit/edit_profile_cubit/edit_profile_cubit.dart'
    as _i21;
import '../features/auth/presentation/cubit/login_cubit/login_cubit.dart'
    as _i16;
import '../features/auth/presentation/cubit/register_cubit/register_cubit.dart'
    as _i19;
import '../features/auth/presentation/cubit/view_profile_cubit/view_profile_cubit.dart'
    as _i20;
import 'module/dio.dart' as _i22;
import 'module/shared_preferences.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.RestApiImp>(() => _i4.RestApiImp(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.factory<_i6.LocaleDataStore>(
      () => _i7.LocaleDataStoreImp(get<_i5.SharedPreferences>()));
  gh.factory<_i8.RemoteDataSource>(
      () => _i9.RemoteDataSourceImp(get<_i4.RestApiImp>()));
  gh.singleton<_i10.UserRepo>(_i11.UserRepoImp(
      get<_i8.RemoteDataSource>(), get<_i6.LocaleDataStore>()));
  gh.factory<_i12.EditProfile>(() => _i12.EditProfile(get<_i10.UserRepo>()));
  gh.factory<_i13.GetProfile>(() => _i13.GetProfile(get<_i10.UserRepo>()));
  gh.factory<_i14.GetToken>(() => _i14.GetToken(get<_i10.UserRepo>()));
  gh.factory<_i15.Login>(() => _i15.Login(get<_i10.UserRepo>()));
  gh.factory<_i16.LoginCubit>(
      () => _i16.LoginCubit(get<_i15.Login>(), get<_i14.GetToken>()));
  gh.factory<_i17.Logout>(() => _i17.Logout(get<_i10.UserRepo>()));
  gh.factory<_i18.Register>(() => _i18.Register(get<_i10.UserRepo>()));
  gh.factory<_i19.RegisterCubit>(
      () => _i19.RegisterCubit(get<_i18.Register>(), get<_i14.GetToken>()));
  gh.factory<_i20.ViewProfileCubit>(() => _i20.ViewProfileCubit(
      get<_i13.GetProfile>(), get<_i14.GetToken>(), get<_i17.Logout>()));
  gh.factory<_i21.EditProfileCubit>(() =>
      _i21.EditProfileCubit(get<_i12.EditProfile>(), get<_i14.GetToken>()));
  return get;
}

class _$MyDioInject extends _i22.MyDioInject {}

class _$InjectionModule extends _i23.InjectionModule {}
