import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/bindings/initial_bindings.dart';
import 'package:flutter_delivery_app/pages/cards.dart';
import 'package:flutter_delivery_app/routes/pages.dart';
import 'package:flutter_delivery_app/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delivery app',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF6F5F5),
        fontFamily: 'SF Pro Display',
      ),
      initialBinding: InitialBindings(),
      initialRoute: Pages.SPLASH,
      getPages: []..addAll(Routes.ROUTES),
      debugShowCheckedModeBanner: false,
      home: Cards(),
    );
  }
}
