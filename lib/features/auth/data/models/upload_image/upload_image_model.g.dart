// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadImageModel _$$_UploadImageModelFromJson(Map<String, dynamic> json) =>
    _$_UploadImageModel(
      data: json['data'] == null
          ? const DataModel()
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UploadImageModelToJson(_$_UploadImageModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      url: json['url'] as String? ?? "",
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
