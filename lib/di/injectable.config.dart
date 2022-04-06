// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../features/auth/data/datasources/local/local_data_store_imp.dart'
    as _i8;
import '../features/auth/data/datasources/remote/remote_data_sorce_imp.dart'
    as _i14;
import '../features/auth/data/datasources/remote/rest_api.dart' as _i4;
import '../features/auth/data/repository/user_repo_imp.dart' as _i16;
import '../features/auth/domain/datasources/local_data_store.dart' as _i7;
import '../features/auth/domain/datasources/remote_data_source.dart' as _i13;
import '../features/auth/domain/repository/user_repo.dart' as _i15;
import '../features/auth/domain/usecases/get_token.dart' as _i20;
import '../features/auth/domain/usecases/login.dart' as _i21;
import '../features/auth/domain/usecases/logout.dart' as _i23;
import '../features/auth/domain/usecases/register.dart' as _i24;
import '../features/auth/presentation/cubit/auth_cubit/auth_cubit.dart' as _i27;
import '../features/auth/presentation/cubit/login_cubit/login_cubit.dart'
    as _i22;
import '../features/auth/presentation/cubit/register_cubit/register_cubit.dart'
    as _i25;
import '../features/profile/data/datasources/remote/remote_data_sorce_imp.dart'
    as _i10;
import '../features/profile/data/datasources/remote/rest_api.dart' as _i5;
import '../features/profile/data/repository/profile_repo_imp.dart' as _i12;
import '../features/profile/domain/datasources/profile_remote_data_source.dart'
    as _i9;
import '../features/profile/domain/repository/profile_repo.dart' as _i11;
import '../features/profile/domain/use_cases/edit_profile.dart' as _i17;
import '../features/profile/domain/use_cases/get_profile.dart' as _i19;
import '../features/profile/presentation/cubit/edit_profile_cubit/edit_profile_cubit.dart'
    as _i18;
import '../features/profile/presentation/cubit/view_profile_cubit/view_profile_cubit.dart'
    as _i26;
import 'module/dio.dart' as _i28;
import 'module/shared_preferences.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.RestApiImp>(() => _i4.RestApiImp(get<_i3.Dio>()));
  gh.factory<_i5.RestApiImp>(() => _i5.RestApiImp(get<_i3.Dio>()));
  await gh.factoryAsync<_i6.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.factory<_i7.LocaleDataStore>(
      () => _i8.LocaleDataStoreImp(get<_i6.SharedPreferences>()));
  gh.factory<_i9.ProfileRemoteDataSource>(
      () => _i10.RemoteDataSourceImp(get<_i5.RestApiImp>()));
  gh.singleton<_i11.ProfileRepo>(_i12.UserRepoImp(
      get<_i9.ProfileRemoteDataSource>(), get<_i7.LocaleDataStore>()));
  gh.factory<_i13.RemoteDataSource>(
      () => _i14.RemoteDataSourceImp(get<_i4.RestApiImp>()));
  gh.singleton<_i15.UserRepo>(_i16.UserRepoImp(
      get<_i13.RemoteDataSource>(), get<_i7.LocaleDataStore>()));
  gh.factory<_i17.EditProfile>(() => _i17.EditProfile(get<_i11.ProfileRepo>()));
  gh.factory<_i18.EditProfileCubit>(
      () => _i18.EditProfileCubit(get<_i17.EditProfile>()));
  gh.factory<_i19.GetProfile>(() => _i19.GetProfile(get<_i11.ProfileRepo>()));
  gh.factory<_i20.GetToken>(() => _i20.GetToken(get<_i15.UserRepo>()));
  gh.factory<_i21.Login>(() => _i21.Login(get<_i15.UserRepo>()));
  gh.factory<_i22.LoginCubit>(() => _i22.LoginCubit(get<_i21.Login>()));
  gh.factory<_i23.Logout>(() => _i23.Logout(get<_i15.UserRepo>()));
  gh.factory<_i24.Register>(() => _i24.Register(get<_i15.UserRepo>()));
  gh.factory<_i25.RegisterCubit>(
      () => _i25.RegisterCubit(get<_i24.Register>(), get<_i20.GetToken>()));
  gh.factory<_i26.ViewProfileCubit>(
      () => _i26.ViewProfileCubit(get<_i19.GetProfile>()));
  gh.factory<_i27.AuthCubit>(
      () => _i27.AuthCubit(get<_i20.GetToken>(), get<_i23.Logout>()));
  return get;
}

class _$MyDioInject extends _i28.MyDioInject {}

class _$InjectionModule extends _i29.InjectionModule {}
