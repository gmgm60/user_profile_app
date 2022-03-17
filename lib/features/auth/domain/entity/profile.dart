
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile.freezed.dart';
@Freezed()
class Profile with _$Profile {
  factory Profile({
    required String id,
    required String email,
    required String name,
    required String token,
  }) = _profile ;

}