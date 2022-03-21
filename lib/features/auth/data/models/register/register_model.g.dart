// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_registerModel _$$_registerModelFromJson(Map<String, dynamic> json) =>
    _$_registerModel(
      message: json['message'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_registerModelToJson(_$_registerModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
