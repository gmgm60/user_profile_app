// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_registerModel _$$_registerModelFromJson(Map<String, dynamic> json) =>
    _$_registerModel(
      token: json['token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_registerModelToJson(_$_registerModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
