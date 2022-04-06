import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_state.dart';
import 'package:user_profile_app/features/auth/presentation/helper_functions/load_painter_image.dart';
import 'package:user_profile_app/core/presentation/routes/router.gr.dart';
import 'package:user_profile_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/inherited_image.dart';
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

    final AuthCubit authCubit = context.read<AuthCubit>()..isLogin();

    return BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
         // print("auth state on splash screen is :$state");
      state.map(
          init: (_) async{
           // InheritedImage.of(context).image=await loadPainterImage();
           // authCubit.isLogin();
          } ,
          loading: (_) {},
          login: (_) async{
            AutoRouter.of(context).replace(const ViewProfileRoute());
            InheritedImage.of(context).myImages.authBackground=null;
          },
          logout: (_) async{
            InheritedImage.of(context).myImages.authBackground=await loadPainterImage();
          },
          error: (errorState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("auth error"),
            ));
          });
    },
    child: Scaffold(
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
                          .headline4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Profile App",
                          style: Theme.of(context)
                              .textTheme
                              .headline4),
                      const SizedBox(
                        height: 20
                      ),
                      Text("Simple App to view and edit Profile",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1?.copyWith(color: Colors.teal[200])),
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
    ),
    );
  }
}

class MyShape {}
