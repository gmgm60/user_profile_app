
import 'package:freezed_annotation/freezed_annotation.dart';
part 'view_profile_state.freezed.dart';

@Freezed()
class ViewProfileState with _$ViewProfileState{
  factory ViewProfileState.init() = _init;
  factory ViewProfileState.loading() = _loading;
  factory ViewProfileState.done()= _done;
  factory ViewProfileState.error() = _error;
}