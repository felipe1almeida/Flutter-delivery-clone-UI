import 'package:flutter_delivery_app/controllers/cards/cards_controller.dart';
import 'package:get/get.dart';

class CardsBindings {
  static void cards() {
    Get.lazyPut<CardsController>(() => CardsController());
  }
}
