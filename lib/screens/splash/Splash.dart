import 'dart:async';

import 'package:BuyAndSell/routes.dart';
import 'package:flutter/material.dart';
import 'package:BuyAndSell/widgets/AppIconWidget.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: AppIconWidget(image: 'assets/icons/app_icon.png'),
      ),
    );
  }
   startTimer() {
    var _duration = Duration(milliseconds: 2000);
    return Timer(_duration, navigate);
  }
  navigate() async {
      // Navigator.of(context).pushReplacementNamed(Routes.tabs);
      Navigator.of(context).pushReplacementNamed(Routes.login);
  }
}

