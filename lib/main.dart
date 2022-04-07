import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'package:user_profile_app/app_localizations.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/inherited_image.dart';
import 'package:user_profile_app/features/localization/presentation/localization_cubit.dart';
import 'package:user_profile_app/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'di/injectable.dart';
import 'core/presentation/routes/router.gr.dart';
import 'features/localization/presentation/localization_state.dart';
import 'features/profile/presentation/cubit/view_profile_cubit/view_profile_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(InheritedImage(MyImages(authBackground: null), child: MyApp()));
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
          create: (context) => getIt.get<ViewProfileCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<LocalizationCubit>(),
        ),
      ],
      child: Builder(builder: (context) {

        return BlocBuilder<LocalizationCubit, LocalizationState>(

          builder: (context, state) {
            Locale locale = const Locale("ar");

            if(state is ChangeLocale){
              locale = state.locale;
            }

            return MaterialApp.router(
              locale: locale,
              debugShowCheckedModeBanner: false,
              title: 'User Profile App',
              theme: ThemeData(
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.blueGrey),
                  textStyle: const TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                )),
                inputDecorationTheme: InputDecorationTheme(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1, color: Colors.blue, style: BorderStyle.solid),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                textTheme: TextTheme(
                  headline4: TextStyle(
                      color: Colors.blue[50], fontWeight: FontWeight.bold),
                  headline5: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  bodyText1: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                iconTheme: const IconThemeData(color: Colors.blue),
                appBarTheme: const AppBarTheme(
                  elevation: 0,
                  color: Colors.transparent,
                  iconTheme: IconThemeData(color: Colors.blue),
                  // actionsIconTheme: IconThemeData(color: Colors.indigo),
                  titleTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.black,
                      systemNavigationBarColor: Colors.blue,
                      systemNavigationBarDividerColor: Colors.blue),
                ),
                primarySwatch: Colors.blue,
              ),
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),

              supportedLocales: L10n.all,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              // localeResolutionCallback: (locale, supportedLocales){
              //   for(var supportedLocale in supportedLocales){
              //     if(supportedLocale.languageCode == locale?.languageCode
              //    // && supportedLocale.countryCode == locale?.countryCode
              //     ){
              //       return supportedLocale ;
              //     }
              //   }
              //  return supportedLocales.first ;
              // },
            );
          },
        );
      }),
    );
  }
}
