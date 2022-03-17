import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/pages/login_page/login_page.dart';

import 'di/injectable.dart';

void main() {
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> getIt.get<LoginCubit>()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
