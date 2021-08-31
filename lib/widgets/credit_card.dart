import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreditCard extends StatelessWidget {
  final String cardNumber;
  final String name;
  final String dueDate;
  final int initialColorCard;
  final int finalColorCard;
  final String cardType;

  const CreditCard({
    Key? key,
    required this.cardNumber,
    required this.name,
    required this.dueDate,
    required this.initialColorCard,
    required this.finalColorCard,
    required this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(initialColorCard),
                Color(finalColorCard),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: Get.width / 2,
          child: Transform.scale(
            scale: 2,
            child: ClipOval(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.12),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(29.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    cardType == 'mc' ? masterCard : visa,
                    width: 64,
                    height: 40,
                  ),
                ],
              ),
              Text(
                cardNumber,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    dueDate,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
