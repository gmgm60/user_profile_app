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
      {required String id,
      required String email,
      required String name,
      required String token}) {
    return _profile(
      id: id,
      email: email,
      name: name,
      token: token,
    );
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call({String id, String email, String name, String token});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$profileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$profileCopyWith(_profile value, $Res Function(_profile) then) =
      __$profileCopyWithImpl<$Res>;
  @override
  $Res call({String id, String email, String name, String token});
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
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_profile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_profile implements _profile {
  _$_profile(
      {required this.id,
      required this.email,
      required this.name,
      required this.token});

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String token;

  @override
  String toString() {
    return 'Profile(id: $id, email: $email, name: $name, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _profile &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$profileCopyWith<_profile> get copyWith =>
      __$profileCopyWithImpl<_profile>(this, _$identity);
}

abstract class _profile implements Profile {
  factory _profile(
      {required String id,
      required String email,
      required String name,
      required String token}) = _$_profile;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$profileCopyWith<_profile> get copyWith =>
      throw _privateConstructorUsedError;
}
