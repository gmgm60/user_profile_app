// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _loginModel.fromJson(json);
}

/// @nodoc
class _$LoginModelTearOff {
  const _$LoginModelTearOff();

  _loginModel call({@JsonKey(name: "access_token") required String token}) {
    return _loginModel(
      token: token,
    );
  }

  LoginModel fromJson(Map<String, Object?> json) {
    return LoginModel.fromJson(json);
  }
}

/// @nodoc
const $LoginModel = _$LoginModelTearOff();

/// @nodoc
mixin _$LoginModel {
  @JsonKey(name: "access_token")
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "access_token") String token});
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$loginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$loginModelCopyWith(
          _loginModel value, $Res Function(_loginModel) then) =
      __$loginModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "access_token") String token});
}

/// @nodoc
class __$loginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$loginModelCopyWith<$Res> {
  __$loginModelCopyWithImpl(
      _loginModel _value, $Res Function(_loginModel) _then)
      : super(_value, (v) => _then(v as _loginModel));

  @override
  _loginModel get _value => super._value as _loginModel;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_loginModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_loginModel implements _loginModel {
  _$_loginModel({@JsonKey(name: "access_token") required this.token});

  factory _$_loginModel.fromJson(Map<String, dynamic> json) =>
      _$$_loginModelFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String token;

  @override
  String toString() {
    return 'LoginModel(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _loginModel &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$loginModelCopyWith<_loginModel> get copyWith =>
      __$loginModelCopyWithImpl<_loginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_loginModelToJson(this);
  }
}

abstract class _loginModel implements LoginModel {
  factory _loginModel({@JsonKey(name: "access_token") required String token}) =
      _$_loginModel;

  factory _loginModel.fromJson(Map<String, dynamic> json) =
      _$_loginModel.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get token;
  @override
  @JsonKey(ignore: true)
  _$loginModelCopyWith<_loginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
