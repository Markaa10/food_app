import 'package:auto_route/auto_route_annotations.dart';

import '../auth/login/login_page.dart';
import '../startup/startup_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    MaterialRoute(page: StartupPage, initial: true),
    MaterialRoute(page: LoginPage),
  ],
)
class $Router {}
