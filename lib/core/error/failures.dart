
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';
@Freezed()
class Failures with _$Failures {
  factory Failures.noUser() = _noUser;
  factory Failures.serverError(String error) = _serverError;
  factory Failures.localStorageError() = _localStorageError;


}