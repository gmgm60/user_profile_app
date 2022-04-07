// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_profileModel _$$_profileModelFromJson(Map<String, dynamic> json) =>
    _$_profileModel(
      id: json['id'] as int?,
      name: json['name'] as String,
      email: json['email'] as String,
      emailVerifiedAt: json['email_verified_at'] as String? ?? "",
      address: json['address'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      image: json['image'] as String?,
      age: json['age'] as String? ?? "",
    );

Map<String, dynamic> _$$_profileModelToJson(_$_profileModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['email'] = instance.email;
  val['email_verified_at'] = instance.emailVerifiedAt;
  val['address'] = instance.address;
  val['phone'] = instance.phone;
  writeNotNull('image', instance.image);
  val['age'] = instance.age;
  return val;
}

_$_profileDataModel _$$_profileDataModelFromJson(Map<String, dynamic> json) =>
    _$_profileDataModel(
      profileModel: ProfileModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_profileDataModelToJson(_$_profileDataModel instance) =>
    <String, dynamic>{
      'data': instance.profileModel,
      'message': instance.message,
      'status': instance.status,
    };
