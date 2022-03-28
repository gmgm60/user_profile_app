import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@Freezed()
class LoginState with _$LoginState {
  factory LoginState.init() = _init;
  factory LoginState.loading() = _loading;
  factory LoginState.done() = _done;
  factory LoginState.error(String error) = _error;
}