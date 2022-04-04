import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/features/auth/domain/validates/validates.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_state.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_state.dart';
import 'package:user_profile_app/features/auth/presentation/helper_functions/load_painter_image.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_form_field.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/divider_or.dart';
import 'dart:ui' as ui show Image;

import 'package:user_profile_app/features/auth/presentation/widgets/login_painter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final AuthCubit authCubit = context.read<AuthCubit>();

    return SafeArea(
      top: false,
      child: BlocProvider(
        create: (context) => getIt.get<LoginCubit>(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: ListView(
              children: [
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    final LoginCubit loginCubit = context.read<LoginCubit>();
                    return Form(
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
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 300,
                                            child: CustomPaint(
                                              painter: LoginPainter(
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
                                child: Text(
                                  "Welcome \nBack",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          CustomFormField(
                            textLabel: "Email",
                            prefix: Icons.email,
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
                            textLabel: "Password",
                            showSuffix: true,
                            isPassword: true,
                            prefix: Icons.lock_outline,
                            initValue: loginCubit.password,
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
                            //  textColor: Colors.black,
                          ),
                          const DividerOr(),
                          CustomElevatedButton(
                            onTap: () async {
                              AutoRouter.of(context)
                                  .navigate(const RegisterRoute());
                            },
                            text: "Sign up",
                            backGroundColor: Colors.white,
                            textColor: Colors.blue,
                          ),
                          BlocBuilder<LoginCubit, LoginState>(
                            builder: (context, state) {
                              return state.map(
                                  init: (_) {
                                    return const Text("");
                                  },
                                  loading: (_) =>
                                      const CircularProgressIndicator(),
                                  done: (userState) {
                                    authCubit.isLogin();
                                    WidgetsBinding.instance
                                        ?.addPostFrameCallback((timeStamp) {
                                      AutoRouter.of(context).popUntilRoot();
                                    });
                                    return const Text("");
                                  },
                                  error: (error) {
                                    return Text(error.error);
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
        ),
      ),
    );
  }
}
