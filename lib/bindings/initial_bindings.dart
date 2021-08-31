import 'package:flutter_delivery_app/bindings/cards_bindings.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    CardsBindings.cards();
  }
}
