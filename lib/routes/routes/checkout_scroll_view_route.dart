import 'package:flutter_delivery_app/bindings/initial_bindings.dart';
import 'package:flutter_delivery_app/pages/checkout_scroll_view.dart';
import 'package:flutter_delivery_app/routes/pages.dart';
import 'package:get/get.dart';

class CheckoutScrollViewRoute {
  // ignore: non_constant_identifier_names
  static final CHECKOUT_SCROLL_VIEW_ROUTES = [
    GetPage(
      name: Pages.CHECKOUT_SCROLL_VIEW,
      page: () => CheckoutScrollView(),
      binding: InitialBindings(),
    ),
  ];
}
