import 'dart:convert';

import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesScreen extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.GreenDark,
        title: Text('Categories',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 30),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 1.17,
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: ListView.builder(
                      itemCount: catArray.length,
                      itemBuilder: (BuildContext context, int index) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 30, 0, 10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                              color: catArray[index]['color'],
                                              spreadRadius: 0)
                                        ]),
                                    padding: EdgeInsets.all(14),
                                    child: Center(
                                        child: Icon(catArray[index]['icon'])),
                                  ),
                                  Container(
                                    width: width / 2,
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(catArray[index]['name'],
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                              Icon(FontAwesomeIcons.caretRight)
                            ],
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
