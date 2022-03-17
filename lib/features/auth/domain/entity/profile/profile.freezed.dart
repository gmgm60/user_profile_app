// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

  _profile call(
      {required String image,
      required String phone,
      required String address,
      required String age}) {
    return _profile(
      image: image,
      phone: phone,
      address: address,
      age: age,
    );
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String get image => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call({String image, String phone, String address, String age});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$profileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$profileCopyWith(_profile value, $Res Function(_profile) then) =
      __$profileCopyWithImpl<$Res>;
  @override
  $Res call({String image, String phone, String address, String age});
}

/// @nodoc
class __$profileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$profileCopyWith<$Res> {
  __$profileCopyWithImpl(_profile _value, $Res Function(_profile) _then)
      : super(_value, (v) => _then(v as _profile));

  @override
  _profile get _value => super._value as _profile;

  @override
  $Res call({
    Object? image = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? age = freezed,
  }) {
    return _then(_profile(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_profile implements _profile {
  _$_profile(
      {required this.image,
      required this.phone,
      required this.address,
      required this.age});

  @override
  final String image;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String age;

  @override
  String toString() {
    return 'Profile(image: $image, phone: $phone, address: $address, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _profile &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$profileCopyWith<_profile> get copyWith =>
      __$profileCopyWithImpl<_profile>(this, _$identity);
}

abstract class _profile implements Profile {
  factory _profile(
      {required String image,
      required String phone,
      required String address,
      required String age}) = _$_profile;

  @override
  String get image;
  @override
  String get phone;
  @override
  String get address;
  @override
  String get age;
  @override
  @JsonKey(ignore: true)
  _$profileCopyWith<_profile> get copyWith =>
      throw _privateConstructorUsedError;
}
