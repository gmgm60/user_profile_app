import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String value;
  final TextStyle textStyle;

  const CustomText(
      {Key? key,
      required this.icon,
      required this.title,
      required this.value,
      required this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Icon(icon),
          Text("  $title  :  $value", style: textStyle),
        ],
      ),
    );
  }
}
