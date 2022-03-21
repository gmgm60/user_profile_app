// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _userModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _userModel call(
      {required String id,
      required String email,
      required String name,
      String token = ""}) {
    return _userModel(
      id: id,
      email: email,
      name: name,
      token: token,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call({String id, String email, String name, String token});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

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
abstract class _$userModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$userModelCopyWith(
          _userModel value, $Res Function(_userModel) then) =
      __$userModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String email, String name, String token});
}

/// @nodoc
class __$userModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$userModelCopyWith<$Res> {
  __$userModelCopyWithImpl(_userModel _value, $Res Function(_userModel) _then)
      : super(_value, (v) => _then(v as _userModel));

  @override
  _userModel get _value => super._value as _userModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_userModel(
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
@JsonSerializable()
class _$_userModel extends _userModel {
  _$_userModel(
      {required this.id,
      required this.email,
      required this.name,
      this.token = ""})
      : super._();

  factory _$_userModel.fromJson(Map<String, dynamic> json) =>
      _$$_userModelFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @JsonKey()
  @override
  final String token;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, name: $name, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _userModel &&
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
  _$userModelCopyWith<_userModel> get copyWith =>
      __$userModelCopyWithImpl<_userModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_userModelToJson(this);
  }
}

abstract class _userModel extends UserModel {
  factory _userModel(
      {required String id,
      required String email,
      required String name,
      String token}) = _$_userModel;
  _userModel._() : super._();

  factory _userModel.fromJson(Map<String, dynamic> json) =
      _$_userModel.fromJson;

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
  _$userModelCopyWith<_userModel> get copyWith =>
      throw _privateConstructorUsedError;
}
