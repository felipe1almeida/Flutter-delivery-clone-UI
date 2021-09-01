import 'package:flutter_delivery_app/bindings/initial_bindings.dart';
import 'package:flutter_delivery_app/pages/splash_screen.dart';
import 'package:flutter_delivery_app/routes/pages.dart';
import 'package:get/route_manager.dart';

class SplashRoute {
  // ignore: non_constant_identifier_names
  static final SPLASH_ROUTES = [
    GetPage(
      name: Pages.SPLASH,
      page: () => SplashScreen(),
      binding: InitialBindings(),
    ),
  ];
}
