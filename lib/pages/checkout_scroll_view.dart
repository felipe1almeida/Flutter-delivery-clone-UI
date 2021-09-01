import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/routes/pages.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CheckoutScrollView extends StatelessWidget {
  const CheckoutScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 17,
            color: Color(0xff2D0C57),
          ),
        ),
        backgroundColor: Color(0xffF6F5F5),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        toolbarHeight: 96,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Payment method',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0xff2D0C57),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'CHANGE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xff7203FF),
                      ),
                    ),
                    onTap: () => Get.toNamed(Pages.CARDS),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/credit-card.svg'),
                  SizedBox(width: 25),
                  Text('**** **** **** 4747'),
                ],
              ),
              SizedBox(height: 44),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Delivery address',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0xff2D0C57),
                    ),
                  ),
                  Text(
                    'CHANGE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xff7203FF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/home.svg'),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alexandra Smith',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Cesu 31 k-2 5.st, SIA Chili Riga',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'LV–1012',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Latvia',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Delivery options',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0xff2D0C57),
                    ),
                  ),
                  Text(
                    'CHANGE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xff7203FF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/walking.svg'),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I’ll pick it up myself',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/bike.svg'),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'By courier',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/Drone.svg'),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'By Drone',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Non-contact-delivery',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0xff2D0C57),
                    ),
                  ),
                  Switch(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/grid.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/shopping-cart-bar.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/user.svg'),
            label: '',
          ),
        ],
      ),
    );
  }
}
