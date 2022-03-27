// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_userModel _$$_userModelFromJson(Map<String, dynamic> json) => _$_userModel(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$_userModelToJson(_$_userModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'token': instance.token,
    };
