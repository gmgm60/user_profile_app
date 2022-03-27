
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_state.freezed.dart';
@Freezed()
class EditProfileState with _$EditProfileState {
  factory EditProfileState.init() = _init;
  factory EditProfileState.loading() = _loading;
  factory EditProfileState.done() = _done;
  factory EditProfileState.error() = _error;
  factory EditProfileState.notLogin() = _notLogin;
  factory EditProfileState.localStorageError() = _localStorageError;
}