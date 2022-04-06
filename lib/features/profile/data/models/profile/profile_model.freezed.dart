// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _profileModel.fromJson(json);
}

/// @nodoc
class _$ProfileModelTearOff {
  const _$ProfileModelTearOff();

  _profileModel call(
      {int? id,
      required String name,
      required String email,
      @JsonKey(name: "email_verified_at") String emailVerifiedAt = "",
      String address = "",
      String phone = "",
      String? image = "",
      String age = ""}) {
    return _profileModel(
      id: id,
      name: name,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
      address: address,
      phone: phone,
      image: image,
      age: age,
    );
  }

  ProfileModel fromJson(Map<String, Object?> json) {
    return ProfileModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileModel = _$ProfileModelTearOff();

/// @nodoc
mixin _$ProfileModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  String get emailVerifiedAt => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      String email,
      @JsonKey(name: "email_verified_at") String emailVerifiedAt,
      String address,
      String phone,
      String? image,
      String age});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res> implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  final ProfileModel _value;
  // ignore: unused_field
  final $Res Function(ProfileModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$profileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$profileModelCopyWith(
          _profileModel value, $Res Function(_profileModel) then) =
      __$profileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      String email,
      @JsonKey(name: "email_verified_at") String emailVerifiedAt,
      String address,
      String phone,
      String? image,
      String age});
}

/// @nodoc
class __$profileModelCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements _$profileModelCopyWith<$Res> {
  __$profileModelCopyWithImpl(
      _profileModel _value, $Res Function(_profileModel) _then)
      : super(_value, (v) => _then(v as _profileModel));

  @override
  _profileModel get _value => super._value as _profileModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? age = freezed,
  }) {
    return _then(_profileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_profileModel extends _profileModel {
  _$_profileModel(
      {this.id,
      required this.name,
      required this.email,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt = "",
      this.address = "",
      this.phone = "",
      this.image = "",
      this.age = ""})
      : super._();

  factory _$_profileModel.fromJson(Map<String, dynamic> json) =>
      _$$_profileModelFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: "email_verified_at")
  final String emailVerifiedAt;
  @JsonKey()
  @override
  final String address;
  @JsonKey()
  @override
  final String phone;
  @JsonKey()
  @override
  final String? image;
  @JsonKey()
  @override
  final String age;

  @override
  String toString() {
    return 'ProfileModel(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, address: $address, phone: $phone, image: $image, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _profileModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(emailVerifiedAt),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$profileModelCopyWith<_profileModel> get copyWith =>
      __$profileModelCopyWithImpl<_profileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_profileModelToJson(this);
  }
}

abstract class _profileModel extends ProfileModel {
  factory _profileModel(
      {int? id,
      required String name,
      required String email,
      @JsonKey(name: "email_verified_at") String emailVerifiedAt,
      String address,
      String phone,
      String? image,
      String age}) = _$_profileModel;
  _profileModel._() : super._();

  factory _profileModel.fromJson(Map<String, dynamic> json) =
      _$_profileModel.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: "email_verified_at")
  String get emailVerifiedAt;
  @override
  String get address;
  @override
  String get phone;
  @override
  String? get image;
  @override
  String get age;
  @override
  @JsonKey(ignore: true)
  _$profileModelCopyWith<_profileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDataModel _$ProfileDataModelFromJson(Map<String, dynamic> json) {
  return _profileDataModel.fromJson(json);
}

/// @nodoc
class _$ProfileDataModelTearOff {
  const _$ProfileDataModelTearOff();

  _profileDataModel call(
      {@JsonKey(name: "data") required ProfileModel profileModel,
      required String message,
      required int status}) {
    return _profileDataModel(
      profileModel: profileModel,
      message: message,
      status: status,
    );
  }

  ProfileDataModel fromJson(Map<String, Object?> json) {
    return ProfileDataModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileDataModel = _$ProfileDataModelTearOff();

/// @nodoc
mixin _$ProfileDataModel {
  @JsonKey(name: "data")
  ProfileModel get profileModel => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDataModelCopyWith<ProfileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataModelCopyWith<$Res> {
  factory $ProfileDataModelCopyWith(
          ProfileDataModel value, $Res Function(ProfileDataModel) then) =
      _$ProfileDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "data") ProfileModel profileModel,
      String message,
      int status});

  $ProfileModelCopyWith<$Res> get profileModel;
}

/// @nodoc
class _$ProfileDataModelCopyWithImpl<$Res>
    implements $ProfileDataModelCopyWith<$Res> {
  _$ProfileDataModelCopyWithImpl(this._value, this._then);

  final ProfileDataModel _value;
  // ignore: unused_field
  final $Res Function(ProfileDataModel) _then;

  @override
  $Res call({
    Object? profileModel = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      profileModel: profileModel == freezed
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProfileModelCopyWith<$Res> get profileModel {
    return $ProfileModelCopyWith<$Res>(_value.profileModel, (value) {
      return _then(_value.copyWith(profileModel: value));
    });
  }
}

/// @nodoc
abstract class _$profileDataModelCopyWith<$Res>
    implements $ProfileDataModelCopyWith<$Res> {
  factory _$profileDataModelCopyWith(
          _profileDataModel value, $Res Function(_profileDataModel) then) =
      __$profileDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "data") ProfileModel profileModel,
      String message,
      int status});

  @override
  $ProfileModelCopyWith<$Res> get profileModel;
}

/// @nodoc
class __$profileDataModelCopyWithImpl<$Res>
    extends _$ProfileDataModelCopyWithImpl<$Res>
    implements _$profileDataModelCopyWith<$Res> {
  __$profileDataModelCopyWithImpl(
      _profileDataModel _value, $Res Function(_profileDataModel) _then)
      : super(_value, (v) => _then(v as _profileDataModel));

  @override
  _profileDataModel get _value => super._value as _profileDataModel;

  @override
  $Res call({
    Object? profileModel = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_profileDataModel(
      profileModel: profileModel == freezed
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_profileDataModel implements _profileDataModel {
  _$_profileDataModel(
      {@JsonKey(name: "data") required this.profileModel,
      required this.message,
      required this.status});

  factory _$_profileDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_profileDataModelFromJson(json);

  @override
  @JsonKey(name: "data")
  final ProfileModel profileModel;
  @override
  final String message;
  @override
  final int status;

  @override
  String toString() {
    return 'ProfileDataModel(profileModel: $profileModel, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _profileDataModel &&
            const DeepCollectionEquality()
                .equals(other.profileModel, profileModel) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(profileModel),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$profileDataModelCopyWith<_profileDataModel> get copyWith =>
      __$profileDataModelCopyWithImpl<_profileDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_profileDataModelToJson(this);
  }
}

abstract class _profileDataModel implements ProfileDataModel {
  factory _profileDataModel(
      {@JsonKey(name: "data") required ProfileModel profileModel,
      required String message,
      required int status}) = _$_profileDataModel;

  factory _profileDataModel.fromJson(Map<String, dynamic> json) =
      _$_profileDataModel.fromJson;

  @override
  @JsonKey(name: "data")
  ProfileModel get profileModel;
  @override
  String get message;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$profileDataModelCopyWith<_profileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
