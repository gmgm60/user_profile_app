import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/pages/edit_profile_page/edit_profile_page.dart';
import 'package:user_profile_app/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:user_profile_app/features/auth/presentation/pages/profile_page/profile_page.dart';

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
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: EditProfilePage(),
      ),
    );
  }
}
