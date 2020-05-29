import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './category.dart';

final List<Category> categories = [
  Category(1,"Bikes", icon: FontAwesomeIcons.motorcycle, color:AppColors.RedDark),
  Category(2,"Cars", icon: FontAwesomeIcons.car, color:AppColors.GreenDark),
  Category(3,"Properties", icon: FontAwesomeIcons.building, color:AppColors.BlueDark),
  Category(5,"Sports", icon: FontAwesomeIcons.tableTennis, color:AppColors.RedDark),
  Category(4,"Furniture", icon: FontAwesomeIcons.chair, color:AppColors.GreenDark),
  Category(6,"Electronics", icon: FontAwesomeIcons.desktop, color:AppColors.BlueDark),
  Category(7,"Jobs", icon: FontAwesomeIcons.briefcase, color:AppColors.RedDark),
  Category(8,"Fashions", icon: FontAwesomeIcons.tshirt, color:AppColors.GreenDark),
  Category(9,"Mobiles", icon: FontAwesomeIcons.mobileAlt, color:AppColors.BlueDark),
  Category(10,"Services", icon: FontAwesomeIcons.tools, color:AppColors.RedDark),
];