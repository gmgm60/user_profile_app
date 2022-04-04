import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/register_cubit/register_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_cubit.dart';
import 'di/injectable.dart';
import 'features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'features/auth/presentation/routes/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<AuthCubit>()..isLogin(),
        ),
        BlocProvider(
          create: (context) => getIt.get<LoginCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<RegisterCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<ViewProfileCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'User Profile App',
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.blueGrey),
            textStyle: const TextStyle(
                color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          )),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),

              borderSide: const BorderSide(width: 1,
                color: Colors.blue,
                style: BorderStyle.solid
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.blue,
            iconTheme: IconThemeData(color: Colors.red),
            actionsIconTheme: IconThemeData(color: Colors.indigo),
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              systemNavigationBarColor: Colors.blue,
              systemNavigationBarDividerColor: Colors.blue
            ),
          ),
          primarySwatch: Colors.blue,
        ),
        // home: const ProfilePage(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
