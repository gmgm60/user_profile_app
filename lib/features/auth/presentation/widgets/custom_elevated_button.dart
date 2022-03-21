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
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              if (icon != null) icon!,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 16.0, color: textColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
        style: ButtonStyle(
          backgroundColor:backGroundColor != null? MaterialStateProperty.all<Color>(backGroundColor!):null,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
        ),
      ),
    );
  }
}