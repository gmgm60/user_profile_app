// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/entity/profile/profile.dart' as _i8;
import '../pages/edit_profile_page/edit_profile_page.dart' as _i5;
import '../pages/login_page/login_page.dart' as _i2;
import '../pages/register_page/register_page.dart' as _i3;
import '../pages/splash_screen/splash_screen.dart' as _i1;
import '../pages/view_profile_page/view_profile_page.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterPage());
    },
    ViewProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ViewProfilePage());
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.EditProfilePage(profile: args.profile, key: args.key));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splashScreen', fullMatch: true),
        _i6.RouteConfig(SplashScreen.name, path: 'splashScreen'),
        _i6.RouteConfig(LoginRoute.name, path: 'login'),
        _i6.RouteConfig(RegisterRoute.name, path: 'register'),
        _i6.RouteConfig(ViewProfileRoute.name, path: 'profile'),
        _i6.RouteConfig(EditProfileRoute.name, path: 'edit_profile')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i6.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: 'splashScreen');

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.ViewProfilePage]
class ViewProfileRoute extends _i6.PageRouteInfo<void> {
  const ViewProfileRoute() : super(ViewProfileRoute.name, path: 'profile');

  static const String name = 'ViewProfileRoute';
}

/// generated route for
/// [_i5.EditProfilePage]
class EditProfileRoute extends _i6.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({required _i8.Profile profile, _i7.Key? key})
      : super(EditProfileRoute.name,
            path: 'edit_profile',
            args: EditProfileRouteArgs(profile: profile, key: key));

  static const String name = 'EditProfileRoute';
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({required this.profile, this.key});

  final _i8.Profile profile;

  final _i7.Key? key;

  @override
  String toString() {
    return 'EditProfileRouteArgs{profile: $profile, key: $key}';
  }
}
