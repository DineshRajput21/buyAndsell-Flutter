
import 'package:BuyAndSell/screens/exploreScreens/freshAds/FreshAdsScreen.dart';
import 'package:BuyAndSell/screens/onBoarding/login/Login.dart';
import 'package:BuyAndSell/screens/settings/screens/Help.dart';
import 'package:flutter/material.dart';

import 'screens/splash/Splash.dart';
import 'screens/bottomTabBar/Tabs.dart';
import 'screens/exploreScreens/categories/Categories.dart';
import 'screens/exploreScreens/adsDetails/AdsDetails.dart';
import 'screens/onBoarding/signup/Signup.dart';

class Routes {
  Routes._();
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String tabs = '/tabs';
  static const String categories = '/categories';
  static const String adsDetails = '/adsDetails';
  static const String help = '/help';
  static const String freshAds = '/freshAds';

  static final routes = <String, WidgetBuilder> {
    splash: (BuildContext context) => SplashScreen(),
    signup: (BuildContext context) => Signup(),
    login: (BuildContext context) => LoginScreen(),
    tabs: (BuildContext context) => Tabs(),
    categories: (BuildContext context) => CategoriesScreen(),
    adsDetails: (BuildContext context) => AdsDetailScreen(),
    help: (BuildContext context) => HelpScreen(),
    freshAds: (BuildContext context) => FreshAdsScreen(),
  };
}