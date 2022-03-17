import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile.freezed.dart';
@Freezed()
class Profile with _$Profile {
  factory Profile({
    required String image,
    required String phone,
    required String address,
    required String age,
  }) = _profile ;

}