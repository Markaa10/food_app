import 'package:auto_route/auto_route_annotations.dart';
import 'package:food_app/presentation/auth/login/widgets/forgot_password.dart';
import 'package:food_app/presentation/auth/signup/signup_page.dart';
import 'package:food_app/presentation/home/home_page.dart';

import '../auth/login/login_page.dart';
import '../startup/startup_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    MaterialRoute(page: StartupPage, initial: true),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: ForgotPassword),
    MaterialRoute(page: SignupPage),
    MaterialRoute(page: HomePage),
  ],
)
class $Router {}
