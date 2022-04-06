import 'dart:ui' as ui show Image;
import 'package:flutter/cupertino.dart';

class MyImages {
  MyImages({required this.authBackground});
  ui.Image? authBackground;
}

class InheritedImage extends InheritedWidget{
   final MyImages myImages;
   const InheritedImage(this.myImages, {required Widget child,Key? key}) : super(child: child,key: key);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static InheritedImage of(BuildContext context)=>
      context.dependOnInheritedWidgetOfExactType<InheritedImage>()!;

}