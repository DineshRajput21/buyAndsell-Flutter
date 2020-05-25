import 'dart:ui';

import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key key}) : super(key: key);
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              _listView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listView() {
    return Expanded(
      child: SizedBox(
        height: 200.0,
        child: ListView.builder(
            itemCount: europeanCountries.length,
            itemBuilder: (context, index) => displayListTile(index, context)),
      ),
    );
  }

  Widget displayListTile(index, context) {
    return ListTile(
      title: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Card(
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: AppColors.Green, spreadRadius: 5),
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              children: <Widget>[
                doerImage(AssetImage('assets/icons/app_icon.jpg')),
                doersCard(index),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget doerImage(image) {
    return Container(
      width: 50.0,
      height: 50.0,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
    );
  }

  Widget doersCard(index) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            europeanCountries[index],
            maxLines: 1,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
          Text(
            'Awesome! wel done!',
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.black,
              ),
              Text(
                '6/ 10',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              )
            ],
          )
        ],
      ),
    );
  }
}
