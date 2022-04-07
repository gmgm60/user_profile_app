import 'package:flutter/material.dart';
import 'package:user_profile_app/app_localizations.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0,vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Container(
                height: 1,
                color: Colors.black12,
              )),
           Text(
            "  ${context.translate.or}  ",
            style: const TextStyle(color: Colors.black54),
          ),
          Expanded(
              child: Container(
                height: 1,
                width: 60,
                color: Colors.black12,
              )),
        ],
      ),
    );
  }
}
