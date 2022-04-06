import 'dart:typed_data';
import 'dart:ui' as ui show Image;
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:user_profile_app/generated/assets.dart';

Future<ui.Image> loadPainterImage() async {
  final bytes = await rootBundle.load(Assets.assetsAuthBackground);
  final Uint8List list = bytes.buffer.asUint8List();
  return await decodeImageFromList(list);
}