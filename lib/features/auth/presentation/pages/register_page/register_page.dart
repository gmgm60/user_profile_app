import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/features/auth/domain/validates/validates.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_state.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/register_cubit/register_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/register_cubit/register_state.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_form_field.dart';

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
          appBar: AppBar(
            leading: const SizedBox(),
            centerTitle: true,
            title: const Text("Register"),
          ),
          body: ListView(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
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
                      text: "Register",
                      backGroundColor: Colors.blue,
                      textColor: Colors.black,
                    ),
                    TextButton(
                        onPressed: () {
                          AutoRouter.of(context).navigate(const LoginRoute());
                        },
                        child: const Text("Or login with your account")),

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
