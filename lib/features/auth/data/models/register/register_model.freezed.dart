// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _registerModel.fromJson(json);
}

/// @nodoc
class _$RegisterModelTearOff {
  const _$RegisterModelTearOff();

  _registerModel call({required String message, required UserModel user}) {
    return _registerModel(
      message: message,
      user: user,
    );
  }

  RegisterModel fromJson(Map<String, Object?> json) {
    return RegisterModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterModel = _$RegisterModelTearOff();

/// @nodoc
mixin _$RegisterModel {
  String get message => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res>;
  $Res call({String message, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  final RegisterModel _value;
  // ignore: unused_field
  final $Res Function(RegisterModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
    implements $RegisterModelCopyWith<$Res> {
  factory _$registerModelCopyWith(
          _registerModel value, $Res Function(_registerModel) then) =
      __$registerModelCopyWithImpl<$Res>;
  @override
  $Res call({String message, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$registerModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res>
    implements _$registerModelCopyWith<$Res> {
  __$registerModelCopyWithImpl(
      _registerModel _value, $Res Function(_registerModel) _then)
      : super(_value, (v) => _then(v as _registerModel));

  @override
  _registerModel get _value => super._value as _registerModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_registerModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
  _$_registerModel({required this.message, required this.user});

  factory _$_registerModel.fromJson(Map<String, dynamic> json) =>
      _$$_registerModelFromJson(json);

  @override
  final String message;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'RegisterModel(message: $message, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _registerModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
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

abstract class _registerModel implements RegisterModel {
  factory _registerModel({required String message, required UserModel user}) =
      _$_registerModel;

  factory _registerModel.fromJson(Map<String, dynamic> json) =
      _$_registerModel.fromJson;

  @override
  String get message;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$registerModelCopyWith<_registerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
