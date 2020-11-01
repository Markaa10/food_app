// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/login/login_page.dart';
import '../auth/login/widgets/forgot_password.dart';
import '../auth/signup/signup_page.dart';
import '../home/home_page.dart';
import '../startup/startup_page.dart';

class Routes {
  static const String startupPage = '/';
  static const String loginPage = '/login-page';
  static const String forgotPassword = '/forgot-password';
  static const String signupPage = '/signup-page';
  static const String homePage = '/home-page';
  static const all = <String>{
    startupPage,
    loginPage,
    forgotPassword,
    signupPage,
    homePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupPage, page: StartupPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.forgotPassword, page: ForgotPassword),
    RouteDef(Routes.signupPage, page: SignupPage),
    RouteDef(Routes.homePage, page: HomePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    ForgotPassword: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPassword(),
        settings: data,
      );
    },
    SignupPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignupPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushStartupPage() => push<dynamic>(Routes.startupPage);

  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);

  Future<dynamic> pushForgotPassword() => push<dynamic>(Routes.forgotPassword);

  Future<dynamic> pushSignupPage() => push<dynamic>(Routes.signupPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);
}
