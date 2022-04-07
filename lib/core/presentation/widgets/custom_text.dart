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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon,size: 30,),
              const SizedBox(width: 10,),
              SizedBox(
                  width: 100,
                  child: Text(title, style: Theme.of(context).textTheme.bodyText1)),
             // const SizedBox(width: 5,),
              Text(value, style:  Theme.of(context).textTheme.bodyText1),
            ],
          ),

        ],
      ),
    );
  }
}
