import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/routes/pages.dart';
import 'package:flutter_delivery_app/widgets/custom_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Color(0xffA259FF),
          ),
          SvgPicture.asset('assets/images/splash_bg.svg'),
          Positioned(
            right: 0,
            child: SvgPicture.asset(
              'assets/images/splash_bg2.svg',
            ),
          ),
          Positioned(
            top: 63,
            left: 20,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xffCDFFB6),
              child: SvgPicture.asset(
                'assets/images/D.svg',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: Get.height / 3),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffF6F5F5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 64),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xffFFFFFF),
                  child: SvgPicture.asset('assets/images/Box.svg'),
                ),
                SizedBox(height: 24),
                Text(
                  'Non-Contact\nDeliveries',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                    color: Color(0xff2D0C57),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0, right: 24),
                  child: Text(
                    'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Color(0xff9586A8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 48),
                CustomButton(
                  text: 'order now',
                  onPressed: () => Get.toNamed(Pages.CHECKOUT_SCROLL_VIEW),
                ),
                SizedBox(height: 32),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'DISMISS',
                    style: TextStyle(
                      color: Color(0xff9586A8),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
