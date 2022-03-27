// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadImageModel _$UploadImageModelFromJson(Map<String, dynamic> json) {
  return _UploadImageModel.fromJson(json);
}

/// @nodoc
class _$UploadImageModelTearOff {
  const _$UploadImageModelTearOff();

  _UploadImageModel call({DataModel data = const DataModel()}) {
    return _UploadImageModel(
      data: data,
    );
  }

  UploadImageModel fromJson(Map<String, Object?> json) {
    return UploadImageModel.fromJson(json);
  }
}

/// @nodoc
const $UploadImageModel = _$UploadImageModelTearOff();

/// @nodoc
mixin _$UploadImageModel {
  DataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadImageModelCopyWith<UploadImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageModelCopyWith<$Res> {
  factory $UploadImageModelCopyWith(
          UploadImageModel value, $Res Function(UploadImageModel) then) =
      _$UploadImageModelCopyWithImpl<$Res>;
  $Res call({DataModel data});

  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$UploadImageModelCopyWithImpl<$Res>
    implements $UploadImageModelCopyWith<$Res> {
  _$UploadImageModelCopyWithImpl(this._value, this._then);

  final UploadImageModel _value;
  // ignore: unused_field
  final $Res Function(UploadImageModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
    ));
  }

  @override
  $DataModelCopyWith<$Res> get data {
    return $DataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UploadImageModelCopyWith<$Res>
    implements $UploadImageModelCopyWith<$Res> {
  factory _$UploadImageModelCopyWith(
          _UploadImageModel value, $Res Function(_UploadImageModel) then) =
      __$UploadImageModelCopyWithImpl<$Res>;
  @override
  $Res call({DataModel data});

  @override
  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$UploadImageModelCopyWithImpl<$Res>
    extends _$UploadImageModelCopyWithImpl<$Res>
    implements _$UploadImageModelCopyWith<$Res> {
  __$UploadImageModelCopyWithImpl(
      _UploadImageModel _value, $Res Function(_UploadImageModel) _then)
      : super(_value, (v) => _then(v as _UploadImageModel));

  @override
  _UploadImageModel get _value => super._value as _UploadImageModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UploadImageModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadImageModel implements _UploadImageModel {
  const _$_UploadImageModel({this.data = const DataModel()});

  factory _$_UploadImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_UploadImageModelFromJson(json);

  @JsonKey()
  @override
  final DataModel data;

  @override
  String toString() {
    return 'UploadImageModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadImageModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$UploadImageModelCopyWith<_UploadImageModel> get copyWith =>
      __$UploadImageModelCopyWithImpl<_UploadImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadImageModelToJson(this);
  }
}

abstract class _UploadImageModel implements UploadImageModel {
  const factory _UploadImageModel({DataModel data}) = _$_UploadImageModel;

  factory _UploadImageModel.fromJson(Map<String, dynamic> json) =
      _$_UploadImageModel.fromJson;

  @override
  DataModel get data;
  @override
  @JsonKey(ignore: true)
  _$UploadImageModelCopyWith<_UploadImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
class _$DataModelTearOff {
  const _$DataModelTearOff();

  _DataModel call({String url = ""}) {
    return _DataModel(
      url: url,
    );
  }

  DataModel fromJson(Map<String, Object?> json) {
    return DataModel.fromJson(json);
  }
}

/// @nodoc
const $DataModel = _$DataModelTearOff();

/// @nodoc
mixin _$DataModel {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res> implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  final DataModel _value;
  // ignore: unused_field
  final $Res Function(DataModel) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(
          _DataModel value, $Res Function(_DataModel) then) =
      __$DataModelCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$DataModelCopyWithImpl<$Res> extends _$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(_DataModel _value, $Res Function(_DataModel) _then)
      : super(_value, (v) => _then(v as _DataModel));

  @override
  _DataModel get _value => super._value as _DataModel;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_DataModel(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel implements _DataModel {
  const _$_DataModel({this.url = ""});

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @JsonKey()
  @override
  final String url;

  @override
  String toString() {
    return 'DataModel(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataModel &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$DataModelCopyWith<_DataModel> get copyWith =>
      __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(this);
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel({String url}) = _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$DataModelCopyWith<_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
