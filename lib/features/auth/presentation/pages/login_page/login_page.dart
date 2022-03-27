import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/features/auth/domain/validates/validates.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit_state.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final LoginCubit loginCubit = getIt.get<LoginCubit>()..isLogin();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("login"),
      ),
      body: ListView(
        children: [
          BlocBuilder<LoginCubit, LoginCubitState>(
            builder: (context, state) {
              final LoginCubit loginCubit = context.read<LoginCubit>();
              return Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFormField(
                      textLabel: "Email",
                      initValue: loginCubit.email,
                      textType: TextInputType.emailAddress,
                      onChanged: (String? email) {
                        if (email != null) {
                          loginCubit.editEmail(email);
                        }
                      },
                      validation: validateEmailAddress,
                    ),
                    CustomFormField(
                      showSuffix: true,
                      isPassword: true,
                      initValue: loginCubit.password,
                      textLabel: "Password",
                      textType: TextInputType.text,
                      validation: validatePassword,
                      onChanged: (String? password) {
                        if (password != null) {
                          loginCubit.editPassword(password);
                        }
                      },
                    ),
                    CustomElevatedButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          await loginCubit.login();
                        }
                      },
                      text: "Login",
                      backGroundColor: Colors.blue,
                      textColor: Colors.black,
                    ),
                    TextButton(onPressed: () {
                      AutoRouter.of(context).navigate(const RegisterRoute());
                    }, child: const Text("Or register a new account")),
                    BlocBuilder<LoginCubit, LoginCubitState>(
                      builder: (context, state) {
                        print("State is $state");
                        return state.map(
                            init: (_) {
                              return const Text("init");
                            },
                            loading: (_) => const CircularProgressIndicator(),
                            done: (userState) {
                              AutoRouter.of(context).navigate(
                                  const ProfileRoute());
                              return const Text("login");
                            },
                            error: (_) {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const ProfilePage()));
                              return const Text("error");
                            });
                      },
                    ),
                    const Text("data"),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
