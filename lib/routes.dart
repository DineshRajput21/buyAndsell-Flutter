
import 'package:flutter/material.dart';

import 'screens/splash/Splash.dart';
import 'screens/bottomTabBar/Tabs.dart';
import 'screens/exploreScreens/categories/Categories.dart';
import 'screens/exploreScreens/adsDetails/AdsDetails.dart';

class Routes {
  Routes._();
  static const String splash = '/splash';
  static const String login = '/login';
  static const String tabs = '/tabs';
  static const String categories = '/categories';
  static const String adsDetails = '/adsDetails';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    tabs: (BuildContext context) => Tabs(),
    categories: (BuildContext context) => CategoriesScreen(),
    adsDetails: (BuildContext context) => AdsDetailScreen(),
  };
}