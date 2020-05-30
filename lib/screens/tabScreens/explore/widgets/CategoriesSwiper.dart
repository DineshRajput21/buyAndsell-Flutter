import 'dart:convert';

import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorySwiper extends StatelessWidget {
  List<Map<String, dynamic>> catArray = [
    {
      'icon': FontAwesomeIcons.motorcycle,
      'name': 'Bikes',
      'color': AppColors.Red,
    },
    {
      'icon': FontAwesomeIcons.car,
      'name': 'Cars',
      'color': AppColors.Green,
    },
    {
      'icon': FontAwesomeIcons.building,
      'name': 'properties',
      'color': AppColors.Blue,
    },
    {
      'icon': FontAwesomeIcons.chair,
      'name': 'Furniture',
      'color': AppColors.Yellow,
    },
    {
      'icon': FontAwesomeIcons.tableTennis,
      'name': 'Sports',
      'color': AppColors.Red,
    },
    {
      'icon': FontAwesomeIcons.desktop,
      'name': 'Electronics',
      'color': AppColors.Green,
    },
    {
      'icon': FontAwesomeIcons.briefcase,
      'name': 'Jobs',
      'color': AppColors.Blue,
    },
    {
      'icon': FontAwesomeIcons.tshirt,
      'name': 'Fashions',
      'color': AppColors.Yellow,
    },
    {
      'icon': FontAwesomeIcons.mobileAlt,
      'name': 'Mobiles',
      'color': AppColors.Green,
    },
    {
      'icon': FontAwesomeIcons.tools,
      'name': 'Services',
      'color': AppColors.Red,
    },
  ];

  redirectScreen(context) {
    Navigator.of(context).pushNamed(Routes.categories);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                GestureDetector(
                  onTap: () => redirectScreen(context),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 6.5,
            padding: EdgeInsets.only(top: 5),
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catArray.length,
                  itemBuilder: (BuildContext context, int index) => 
                   Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 15, 30, 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: catArray[index]['color'],
                                      )
                                ]),
                            padding: EdgeInsets.all(14),
                            child: Center(child: Icon(catArray[index]['icon'])),
                          ),
                          Text(catArray[index]['name'],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                        ],
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
