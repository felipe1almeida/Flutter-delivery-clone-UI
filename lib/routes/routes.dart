import 'package:flutter_delivery_app/routes/routes/cards_route.dart';
import 'package:flutter_delivery_app/routes/routes/checkout_scroll_view_route.dart';
import 'package:flutter_delivery_app/routes/routes/splash_route.dart';
import 'package:get/route_manager.dart';

class Routes {
  // ignore: non_constant_identifier_names
  static final ROUTES = <GetPage>[]
    ..addAll(SplashRoute.SPLASH_ROUTES)
    ..addAll(CheckoutScrollViewRoute.CHECKOUT_SCROLL_VIEW_ROUTES)
    ..addAll(CardsRoute.CARDS_ROUTES);
}
