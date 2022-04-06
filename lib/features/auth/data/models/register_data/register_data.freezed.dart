// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModelData _$RegisterModelDataFromJson(Map<String, dynamic> json) {
  return _RegisterModelData.fromJson(json);
}

/// @nodoc
class _$RegisterModelDataTearOff {
  const _$RegisterModelDataTearOff();

  _RegisterModelData call(
      {required String name,
      required String email,
      required String password,
      @JsonKey(name: "password_confirmation")
          required String passwordConfirmation}) {
    return _RegisterModelData(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );
  }

  RegisterModelData fromJson(Map<String, Object?> json) {
    return RegisterModelData.fromJson(json);
  }
}

/// @nodoc
const $RegisterModelData = _$RegisterModelDataTearOff();

/// @nodoc
mixin _$RegisterModelData {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password_confirmation")
  String get passwordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelDataCopyWith<RegisterModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelDataCopyWith<$Res> {
  factory $RegisterModelDataCopyWith(
          RegisterModelData value, $Res Function(RegisterModelData) then) =
      _$RegisterModelDataCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      String password,
      @JsonKey(name: "password_confirmation") String passwordConfirmation});
}

/// @nodoc
class _$RegisterModelDataCopyWithImpl<$Res>
    implements $RegisterModelDataCopyWith<$Res> {
  _$RegisterModelDataCopyWithImpl(this._value, this._then);

  final RegisterModelData _value;
  // ignore: unused_field
  final $Res Function(RegisterModelData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterModelDataCopyWith<$Res>
    implements $RegisterModelDataCopyWith<$Res> {
  factory _$RegisterModelDataCopyWith(
          _RegisterModelData value, $Res Function(_RegisterModelData) then) =
      __$RegisterModelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      String password,
      @JsonKey(name: "password_confirmation") String passwordConfirmation});
}

/// @nodoc
class __$RegisterModelDataCopyWithImpl<$Res>
    extends _$RegisterModelDataCopyWithImpl<$Res>
    implements _$RegisterModelDataCopyWith<$Res> {
  __$RegisterModelDataCopyWithImpl(
      _RegisterModelData _value, $Res Function(_RegisterModelData) _then)
      : super(_value, (v) => _then(v as _RegisterModelData));

  @override
  _RegisterModelData get _value => super._value as _RegisterModelData;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_RegisterModelData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModelData implements _RegisterModelData {
  _$_RegisterModelData(
      {required this.name,
      required this.email,
      required this.password,
      @JsonKey(name: "password_confirmation")
          required this.passwordConfirmation});

  factory _$_RegisterModelData.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelDataFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  @override
  String toString() {
    return 'RegisterModelData(name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterModelData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.passwordConfirmation, passwordConfirmation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(passwordConfirmation));

  @JsonKey(ignore: true)
  @override
  _$RegisterModelDataCopyWith<_RegisterModelData> get copyWith =>
      __$RegisterModelDataCopyWithImpl<_RegisterModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelDataToJson(this);
  }
}

abstract class _RegisterModelData implements RegisterModelData {
  factory _RegisterModelData(
      {required String name,
      required String email,
      required String password,
      @JsonKey(name: "password_confirmation")
          required String passwordConfirmation}) = _$_RegisterModelData;

  factory _RegisterModelData.fromJson(Map<String, dynamic> json) =
      _$_RegisterModelData.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: "password_confirmation")
  String get passwordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$RegisterModelDataCopyWith<_RegisterModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
