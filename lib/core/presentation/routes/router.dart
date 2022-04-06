import 'package:auto_route/annotations.dart';
import 'package:user_profile_app/features/profile/presentation/pages/edit_profile_page/edit_profile_page.dart';
import 'package:user_profile_app/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:user_profile_app/features/auth/presentation/pages/register_page/register_page.dart';
import 'package:user_profile_app/features/auth/presentation/pages/splash_screen/splash_screen.dart';
import 'package:user_profile_app/features/profile/presentation/pages/view_profile_page/view_profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [

    AutoRoute(
      page: SplashScreen,
      initial: true,
      path: 'splashScreen',
    ),
    AutoRoute(
      page: LoginPage,
      path: 'login',
    ),
    AutoRoute(
      page: RegisterPage,
      path: 'register',
    ),
    AutoRoute(
      page: ViewProfilePage,
      path: 'profile',
    ),
    AutoRoute(
      page: EditProfilePage,
      path: 'edit_profile',
    ),
  ],
)
class $AppRouter {}
