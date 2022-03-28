import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@Freezed()
class AuthState with _$AuthState {
  factory AuthState.init() = _Init;
  factory AuthState.loading() = _Loading;
  factory AuthState.login() = _Done;
  factory AuthState.logout() = _Logout;
  factory AuthState.error(String error) = _Error;
}