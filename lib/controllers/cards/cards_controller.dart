import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsController extends GetxController {
  final TextEditingController nameOnCardController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvcController = TextEditingController();

  final ScrollController cardsListController = ScrollController();

  List<Map> initialCardData = [
    {
      'cardNumber': '4747  4747  4747  4747',
      'name': 'Felipe A R Oliveira',
      'dueDate': '07/21',
      'colorCardInital': 0xff6441A5,
      'colorCardFinal': 0xff2a0845,
      'cardType': 'mc',
    },
    {
      'cardNumber': '5555  5555  5555  5555',
      'name': 'Felipe A R Oliveira',
      'dueDate': '01/29',
      'colorCardInital': 0xffB993D6,
      'colorCardFinal': 0xff8CA6DB,
      'cardType': 'mc',
    },
    {
      'cardNumber': '2222  2222  2222  2222',
      'name': 'Felipe A R Oliveira',
      'dueDate': '03/25',
      'colorCardInital': 0xffffb347,
      'colorCardFinal': 0xffffcc33,
      'cardType': 'visa',
    },
  ];
}
