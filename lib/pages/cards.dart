import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_delivery_app/controllers/cards/cards_controller.dart';
import 'package:flutter_delivery_app/helpers/constants.dart';
import 'package:flutter_delivery_app/widgets/credit_card.dart';
import 'package:flutter_delivery_app/widgets/custom_button.dart';
import 'package:flutter_delivery_app/widgets/custom_textfield.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Cards extends GetView<CardsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF6F5F5),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit / Debit card',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  letterSpacing: 0.41,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                height: 240,
                width: 374,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.initialCardData.length,
                  controller: controller.cardsListController,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 374,
                      // height: 240,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: CreditCard(
                        cardNumber: controller.initialCardData[index]['cardNumber'],
                        name: controller.initialCardData[index]['name'],
                        dueDate: controller.initialCardData[index]['dueDate'],
                        initialColorCard: controller.initialCardData[index]['colorCardInital'],
                        finalColorCard: controller.initialCardData[index]['colorCardFinal'],
                        cardType: controller.initialCardData[index]['cardType'],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24),
              Center(child: SvgPicture.asset('assets/icons/Take a photo icon.svg')),
              SizedBox(height: 13),
              CustomTextField(
                label: 'Name on card',
                isCardField: false,
                controller: controller.nameOnCardController,
              ),
              SizedBox(height: 23),
              CustomTextField(
                label: 'Card number',
                isCardField: true,
                image: masterCard,
                controller: controller.cardNumberController,
              ),
              SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextField(
                    label: 'Expiry date',
                    isCardField: false,
                    width: 176,
                    controller: controller.expiryDateController,
                  ),
                  CustomTextField(
                    label: 'CVC',
                    isCardField: false,
                    width: 176,
                    image: miniCardInput,
                    controller: controller.cvcController,
                  ),
                ],
              ),
              SizedBox(height: 55),
              CustomButton(
                text: 'use this card',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
