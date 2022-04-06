import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@Freezed()
class RegisterState with _$RegisterState {
  factory RegisterState.init() = _init;
  factory RegisterState.loading() = _loading;
  factory RegisterState.done() = _done;
  factory RegisterState.error(String error) = _error;
}