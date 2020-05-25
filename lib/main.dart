import 'package:BuyAndSell/routes.dart';
import 'package:BuyAndSell/screens/splash/Splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: Routes.routes,
      home: SplashScreen(),
    );
  }
}

