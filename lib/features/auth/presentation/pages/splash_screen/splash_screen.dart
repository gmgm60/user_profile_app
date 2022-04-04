import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/generated/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xff046bfb),
        systemNavigationBarContrastEnforced: false));
    return Scaffold(
      backgroundColor: const Color(0xff046bfb),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    image: AssetImage(Assets.assetsAuthBackground))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Profile",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Profile App",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(color: Colors.white)),
                      const SizedBox(
                        height: 20
                      ),
                      Text("Simple App to view and edit Profile",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.teal[200])),
                      const SizedBox(height: 20,),
                      CustomElevatedButton(onTap: (){
                        AutoRouter.of(context).navigate(const LoginRoute());
                      }, text: "Log in",backGroundColor: Colors.white,textColor: Colors.blue,),
                      CustomElevatedButton(onTap: (){
                        AutoRouter.of(context).navigate(const RegisterRoute());
                      }, text: "Sign up",backGroundColor:  const Color(0xff046bfb),textColor: Colors.white,borderColor: Colors.white),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyShape {}
