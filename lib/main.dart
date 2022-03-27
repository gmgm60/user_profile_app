import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          create: (context) => getIt.get<LoginCubit>()
            ..isLogin(),
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
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        // home: const ProfilePage(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
