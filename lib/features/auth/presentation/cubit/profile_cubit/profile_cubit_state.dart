
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_cubit_state.freezed.dart';

@Freezed()
class ProfileCubitState with _$ProfileCubitState {
 factory ProfileCubitState.init() = _init;
 factory ProfileCubitState.loading() = _loading;
 factory ProfileCubitState.done()= _done;
 factory ProfileCubitState.error() = _error;

}