import 'package:flutter_delivery_app/bindings/initial_bindings.dart';
import 'package:flutter_delivery_app/pages/cards.dart';
import 'package:flutter_delivery_app/routes/pages.dart';
import 'package:get/route_manager.dart';

class CardsRoute {
  // ignore: non_constant_identifier_names
  static final CARDS_ROUTES = [
    GetPage(
      name: Pages.CARDS,
      page: () => Cards(),
      binding: InitialBindings(),
    ),
  ];
}
