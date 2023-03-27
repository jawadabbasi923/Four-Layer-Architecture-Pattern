// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../presentation/login/login_view.dart';
import '../presentation/splash/splash_view.dart';
import 'routes.dart';

class RoutePages {
  static const INITIAL = AppRoutes.SPLASH;
  static final routes = [
    GetPage(name: AppRoutes.SPLASH, page: () => SplashView()),
    GetPage(name: AppRoutes.LOGIN, page: () => LoginView()),
  ];
}
