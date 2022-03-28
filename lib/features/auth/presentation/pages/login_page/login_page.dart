import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/domain/validates/validates.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_state.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_state.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final LoginCubit loginCubit = getIt.get<LoginCubit>()..isLogin();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final AuthCubit authCubit = context.read<AuthCubit>();

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.map(init:(_)=> authCubit.isLogin(),
            loading: (_){},
            login: (_){
              AutoRouter.of(context).replace(const ViewProfileRoute());
            },
            logout: (_){},
            error: (errorState){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("auth error"),));
            });
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("login"),
        ),
        body: ListView(
          children: [
            BlocBuilder<LoginCubit, LoginState>(
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
                      BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                          print("State is $state");
                          return state.map(
                              init: (_) {
                                return const Text("init");
                              },
                              loading: (_) => const CircularProgressIndicator(),
                              done: (userState) {
                                authCubit.isLogin();
                                return const Text("login");
                              },
                              error: (error) {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => const ProfilePage()));
                                return Text("error : ${error.error}");
                              });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
