import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_image_model.freezed.dart';
part 'upload_image_model.g.dart';

@Freezed()
class UploadImageModel with _$UploadImageModel {

  const factory UploadImageModel({
    @Default(DataModel()) DataModel data,
}) = _UploadImageModel;

  factory UploadImageModel.fromJson(Map<String, dynamic> json) =>
      _$UploadImageModelFromJson(json);

}
@Freezed()
class DataModel with _$DataModel {

  const factory DataModel({
    @Default("") String url,
}) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

}

