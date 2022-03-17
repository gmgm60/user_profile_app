import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit_state.dart';
import '../../validates/validates.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login"),
      ),
      body: ListView(
        children: [
          BlocConsumer<LoginCubit, LoginCubitState>(
            listener: (context, state) {
              print(state);
              state.map(
                init: (_) {},
                loading: (_) {},
                done: (loginState) {},
                error: (error) {},
              );
            },
            builder: (context, state) {
              final LoginCubit loginCubit = getIt.get<LoginCubit>();
              final GlobalKey<FormState> formKey = GlobalKey<FormState>();
              return Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login Or Register",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFormField(
                      textLabel: "Email",
                      textType: TextInputType.text,
                      onChanged: (String? email){
                        if(email != null ){
                          loginCubit.editEmail(email);
                        }
                      },
                      validation:validateEmailAddress,
                    ),
                    CustomFormField(
                      textLabel: "Password",
                      textType: TextInputType.text,
                      validation: validatePassword,
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
                    CustomElevatedButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          await loginCubit.register();
                        }
                      },
                      text: "Register",
                      backGroundColor: Colors.blue,
                      textColor: Colors.black,
                    ),
                    state.map(init: (_)=>Container(), loading: (_)=>const CircularProgressIndicator(), done: (userState)=> Container(), error: (_)=>const Text("error"))
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
