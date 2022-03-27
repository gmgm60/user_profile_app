
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/user/user.dart';
part 'register_cubit_state.freezed.dart';
@Freezed()
class RegisterCubitState with _$RegisterCubitState {
  factory RegisterCubitState.init() = _init;
  factory RegisterCubitState.loading() = _loading;
  factory RegisterCubitState.done() = _done;
  factory RegisterCubitState.error(String error) = _error;
}