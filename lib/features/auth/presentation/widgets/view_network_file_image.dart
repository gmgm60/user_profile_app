import 'dart:io';
import 'package:flutter/material.dart';
import 'package:user_profile_app/generated/assets.dart';

class ViewNetworkFileImage extends Image {
  final String imgPath;

  static ImageProvider getProvider(String imgPath){

    ImageProvider image = const AssetImage(Assets.assetsImg,);

    if (imgPath == "") {
    } else if (Uri.parse(imgPath).host == "" ? false : true) {
      image = NetworkImage(
        imgPath,scale: 2
      );
    } else if(!imgPath.contains("assets")){
      print(imgPath);
      image = FileImage(File(imgPath));
    } else if (imgPath.contains("assets")){
      image = AssetImage(imgPath,);
    }
    return image;
  }

  ViewNetworkFileImage(
      {Key? key, required this.imgPath, double? width, double? height, BoxFit? fit})
      : super(key: key, image: getProvider(imgPath),
    fit: fit,
    width: width,
    height: height,

  );

}