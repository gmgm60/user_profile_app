// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return _registerModel.fromJson(json);
}

/// @nodoc
class _$ResponseModelTearOff {
  const _$ResponseModelTearOff();

  _registerModel call({required String token, required UserModel user}) {
    return _registerModel(
      token: token,
      user: user,
    );
  }

  ResponseModel fromJson(Map<String, Object?> json) {
    return ResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ResponseModel = _$ResponseModelTearOff();

/// @nodoc
mixin _$ResponseModel {
  String get token => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res>;
  $Res call({String token, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  final ResponseModel _value;
  // ignore: unused_field
  final $Res Function(ResponseModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$registerModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$registerModelCopyWith(
          _registerModel value, $Res Function(_registerModel) then) =
      __$registerModelCopyWithImpl<$Res>;
  @override
  $Res call({String token, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$registerModelCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res>
    implements _$registerModelCopyWith<$Res> {
  __$registerModelCopyWithImpl(
      _registerModel _value, $Res Function(_registerModel) _then)
      : super(_value, (v) => _then(v as _registerModel));

  @override
  _registerModel get _value => super._value as _registerModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_registerModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_registerModel implements _registerModel {
  _$_registerModel({required this.token, required this.user});

  factory _$_registerModel.fromJson(Map<String, dynamic> json) =>
      _$$_registerModelFromJson(json);

  @override
  final String token;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'ResponseModel(token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _registerModel &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$registerModelCopyWith<_registerModel> get copyWith =>
      __$registerModelCopyWithImpl<_registerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_registerModelToJson(this);
  }
}

abstract class _registerModel implements ResponseModel {
  factory _registerModel({required String token, required UserModel user}) =
      _$_registerModel;

  factory _registerModel.fromJson(Map<String, dynamic> json) =
      _$_registerModel.fromJson;

  @override
  String get token;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$registerModelCopyWith<_registerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
