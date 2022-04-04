import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/domain/validates/validates.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_state.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/register_cubit/register_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/register_cubit/register_state.dart';
import 'package:user_profile_app/features/auth/presentation/helper_functions/load_painter_image.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_form_field.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/divider_or.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/login_painter.dart';
import 'dart:ui' as ui show Image;

import 'package:user_profile_app/features/auth/presentation/widgets/register_painter.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Builder(builder: (context) {
      final RegisterCubit registerCubit = context.read<RegisterCubit>();

      final AuthCubit authCubit = context.read<AuthCubit>();

      return BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.map(
              init: (_) => authCubit.isLogin(),
              loading: (_) {},
              login: (_) {
                AutoRouter.of(context).replace(const ViewProfileRoute());
              },
              logout: (_) {},
              error: (errorState) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("auth error"),
                ));
              });
        },
        child: Scaffold(
          // appBar: AppBar(
          //   leading: const SizedBox(),
          //   centerTitle: true,
          //   title: const Text("Register"),
          // ),
          body: ListView(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        FutureBuilder<ui.Image>(
                          future: loadPainterImage(),
                          builder: (BuildContext context,
                              AsyncSnapshot<ui.Image> snapshot) {
                            SystemChrome.setEnabledSystemUIMode(
                                SystemUiMode.immersive);
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return const Text('Loading....');
                              default:
                                if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else {
                                  return FittedBox(
                                    child: SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width,
                                      height: 300,
                                      child: CustomPaint(
                                        painter: RegisterPainter(
                                            background: snapshot.data!),
                                      ),
                                    ),
                                  );
                                }
                            }
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Create \nAccount",style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(color: Colors.white),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    CustomFormField(
                      textLabel: "Name",
                      initValue: registerCubit.name,
                      textType: TextInputType.name,
                      onChanged: (String? name) {
                        if (name != null) {
                          registerCubit.editName(name);
                        }
                      },
                      validation: validateName,
                    ),
                    CustomFormField(
                      textLabel: "Email",
                      initValue: registerCubit.email,
                      textType: TextInputType.emailAddress,
                      onChanged: (String? email) {
                        if (email != null) {
                          registerCubit.editEmail(email);
                        }
                      },
                      validation: validateEmailAddress,
                    ),
                    CustomFormField(
                      showSuffix: true,
                      isPassword: true,
                      initValue: registerCubit.password,
                      textLabel: "Password",
                      textType: TextInputType.text,
                      validation: validatePassword,
                      onChanged: (String? password) {
                        if (password != null) {
                          registerCubit.editPassword(password);
                        }
                      },
                    ),
                    CustomElevatedButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          await registerCubit.register();
                        }
                      },
                      text: "Sing up",
                      backGroundColor: Colors.blue,
                      textColor: Colors.white,
                    ),
                    const DividerOr(),
                    CustomElevatedButton(
                      onTap: () async {
                        AutoRouter.of(context)
                            .navigate(const LoginRoute());
                      },
                      text: "Log in",
                      backGroundColor: Colors.white,
                      textColor: Colors.blue,
                    ),

                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) {
                        print("State is $state");
                        return state.map(
                            init: (_) {
                              return const Text("");
                            },
                            loading: (_) => const CircularProgressIndicator(),
                            done: (userState) {
                              authCubit.isLogin();
                              return const Text("");
                            },
                            error: (error) {
                              return Text(error.error.toString());
                            });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
