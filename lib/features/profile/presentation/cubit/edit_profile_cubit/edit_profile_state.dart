import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
part 'edit_profile_state.freezed.dart';

@Freezed()
class EditProfileState with _$EditProfileState {
  factory EditProfileState.init() = _init;
  factory EditProfileState.loading() = _loading;
  factory EditProfileState.done({required Profile profile}) = _done;
  factory EditProfileState.error() = _error;
}