
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/user/user.dart';
part 'login_cubit_state.freezed.dart';
@Freezed()
class LoginCubitState with _$LoginCubitState {
  factory LoginCubitState.init() = _init;
  factory LoginCubitState.loading() = _loading;
  factory LoginCubitState.done({required User user}) = _done;
  factory LoginCubitState.error() = _error;
}