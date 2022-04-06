import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile.freezed.dart';
@Freezed()
class Profile with _$Profile {
  const factory Profile({
    required String name,
    required String email,
    required String image,
    required String phone,
    required String address,
    required String age,
  }) = _profile ;

}