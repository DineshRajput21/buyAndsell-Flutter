import 'package:BuyAndSell/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Buy And Sell',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 16,
                    ),
                    Text(
                      ' ucreate.it, mohali, India ',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Icon(
                      FontAwesomeIcons.caretDown,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(Routes.profile),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/icons/me.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
