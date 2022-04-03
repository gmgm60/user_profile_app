import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Widget? icon;
  final Color? backGroundColor;
  final Color? textColor;

  const CustomElevatedButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.icon,
    this.backGroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onTap,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(text),
              ),
              style: ButtonStyle(
                backgroundColor:backGroundColor != null? MaterialStateProperty.all<Color>(backGroundColor!):null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}