// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../domain/entity/profile/profile.dart' as _i7;
import '../pages/edit_profile_page/edit_profile_page.dart' as _i4;
import '../pages/login_page/login_page.dart' as _i1;
import '../pages/register_page/register_page.dart' as _i2;
import '../pages/view_profile_page/view_profile_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.RegisterPage());
    },
    ViewProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ViewProfilePage());
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.EditProfilePage(profile: args.profile, key: args.key));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: 'login', fullMatch: true),
        _i5.RouteConfig(LoginRoute.name, path: 'login'),
        _i5.RouteConfig(RegisterRoute.name, path: 'register'),
        _i5.RouteConfig(ViewProfileRoute.name, path: 'profile'),
        _i5.RouteConfig(EditProfileRoute.name, path: 'edit_profile')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i5.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.ViewProfilePage]
class ViewProfileRoute extends _i5.PageRouteInfo<void> {
  const ViewProfileRoute() : super(ViewProfileRoute.name, path: 'profile');

  static const String name = 'ViewProfileRoute';
}

/// generated route for
/// [_i4.EditProfilePage]
class EditProfileRoute extends _i5.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({required _i7.Profile profile, _i6.Key? key})
      : super(EditProfileRoute.name,
            path: 'edit_profile',
            args: EditProfileRouteArgs(profile: profile, key: key));

  static const String name = 'EditProfileRoute';
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({required this.profile, this.key});

  final _i7.Profile profile;

  final _i6.Key? key;

  @override
  String toString() {
    return 'EditProfileRouteArgs{profile: $profile, key: $key}';
  }
}
