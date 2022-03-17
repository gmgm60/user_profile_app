
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
@Freezed()
class User with _$User {
  factory User({
    required String id,
    required String email,
    required String name,
    required String token,
}) = _user ;

}