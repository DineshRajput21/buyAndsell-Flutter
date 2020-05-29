import 'package:BuyAndSell/constants/AppColors.dart';

import './CustomSideButton.dart';
import 'package:flutter/material.dart';

class AdsItem extends StatelessWidget {
  final int index = 1;
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: index == 0 ? 350 : 300,
        //color: Colors.red,
        child: Container(
          margin: EdgeInsets.only(left: 15.0),
          //color: Colors.yellow,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: index == 0 ? 250.0 : 200.0,
                width: index == 0
                    ? deviceSize.width * 0.5
                    : deviceSize.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "assets/images/products/cycle.jpeg",
                        fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: index == 0 ? 250.0 : 200.0,
                width: index == 0
                    ? deviceSize.width * 0.5
                    : deviceSize.width * 0.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE7E9EF).withOpacity(0.0),
                      Color(0xFFE7E9EF)
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    stops: [0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Positioned(
                bottom: index == 0 ? 20.0 : 0.0,
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        // height: 110.0,
                        width: index == 0
                            ? deviceSize.width * 0.4
                            : deviceSize.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          // color: Colors.white,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE7E9EF),
                              Colors.white30,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Brand new cycle',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: index == 0 ? 17.0 : 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Matter made',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: index == 0 ? 12.0 : 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '274',
                                    style: TextStyle(
                                      color: AppColors.BlueDark,
                                      fontSize: index == 0 ? 30.0 : 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'USD',
                                      style: TextStyle(
                                        color: AppColors.BlueDark,
                                        fontSize: index == 0 ? 15.0 : 10.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: -20.0,
                      child: CustomSideButton(
                        icon: Icons.arrow_forward,
                        fxn: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
