import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Widget? icon;
  final Color? backGroundColor;
  final Color? textColor;
  final Color? borderColor;

  const CustomElevatedButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.icon,
    this.backGroundColor,
    this.textColor, this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21.0,right: 21.0,top: 5,bottom: 5),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onTap,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(text,style: TextStyle(color: textColor),),
              ),
              style: ButtonStyle(side:borderColor != null? MaterialStateProperty.all<BorderSide>(BorderSide(color: borderColor!)):null ,
                backgroundColor:backGroundColor != null? MaterialStateProperty.all<Color>(backGroundColor!):null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}