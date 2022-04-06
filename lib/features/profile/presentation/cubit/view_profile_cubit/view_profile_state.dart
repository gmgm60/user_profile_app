import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
part 'view_profile_state.freezed.dart';

@Freezed()
class ViewProfileState with _$ViewProfileState{
  factory ViewProfileState.init() = _init;
  factory ViewProfileState.loading() = _loading;
  factory ViewProfileState.done({required Profile profile})= _done;
  factory ViewProfileState.error(String error) = _error;
}