import 'dart:io';
import 'package:flutter/material.dart';
import 'package:user_profile_app/generated/assets.dart';

class ViewNetworkFileImage extends Image {
  final String imgPath;

  static ImageProvider getProvider(String imgPath){

    ImageProvider image = const AssetImage(Assets.assetsUserImage,);

    try {
      if (Uri.parse(imgPath).host != "" ) {
        image = NetworkImage(
          imgPath,scale: 2
        );
      } else if(!imgPath.contains("assets")){
        print(imgPath);
        image = FileImage(File(imgPath));
        Image(image: image);
      } else if (imgPath.contains("assets")){
        image = AssetImage(imgPath,);
      }
    } catch (e) {
      image = const AssetImage(Assets.assetsUserImage,);
      return image;
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