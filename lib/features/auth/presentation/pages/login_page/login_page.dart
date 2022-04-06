import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/core/domain/validates/validates.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_state.dart';
import 'package:user_profile_app/core/presentation/routes/router.gr.dart';
import 'package:user_profile_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/core/presentation/widgets/custom_form_field.dart';
import 'package:user_profile_app/core/presentation/widgets/divider_or.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/inherited_image.dart';
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
          // backgroundColor: Colors.grey,
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
                            alignment: Alignment.topLeft,
                            children: [
                              FittedBox(
                                child: SizedBox(
                                  width: MediaQuery.of(context)
                                      .size
                                      .width,
                                  height: 400,
                                  child: CustomPaint(
                                    painter: LoginPainter(
                                        background: InheritedImage.of(context).myImages.authBackground!),
                                  ),
                                ),
                              ),
                              const AutoBackButton(color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,top: 100),
                                child: Text(
                                  "Welcome \nBack",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4,
                                ),
                              ),
                            ],
                          ),
                       //   const SizedBox(height: 40),
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
