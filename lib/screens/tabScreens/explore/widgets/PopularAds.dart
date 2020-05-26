import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flip_panel/flip_panel.dart';

class PopularAds extends StatelessWidget {
  final List<Map<String, dynamic>> addsArray = [
    {
      'icon': 'assets/images/recommendImages/cycle.jpeg',
      'name': 'Bike for girls',
    },
    {
      'icon': 'assets/images/recommendImages/furniture.jpeg',
      'name': 'Two seater sofa',
    },
    {
      'icon': 'assets/images/recommendImages/cycle.jpeg',
      'name': 'Bikes',
    },
    {
      'icon': 'assets/images/recommendImages/furniture.jpeg',
      'name': 'Cars',
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Text(
            'Popular Items',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3.5,
          width: width,
          padding: EdgeInsets.only(top: 5),
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: addsArray.length,
              itemBuilder: (BuildContext context, int index) => InkWell(
                onTap: () => Navigator.of(context).pushNamed(Routes.adsDetails,
                    arguments: addsArray[index]['name']),
                child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.fromLTRB(15, 0, 20, (height / 2) / 8),
                        width: width / 1.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(addsArray[index]['icon']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: Align(
                          alignment: Alignment.center,
                          child: Card(
                            child: Container(
                              width: width / 2,
                              height: width / 4.5,
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '\$3.99  ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                          text: '\$8.99',
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5.0)),
                                  Text(
                                    addsArray[index]['name'],
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5.0)),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.mapMarkerAlt,
                                        size: 12,
                                      ),
                                      Text(
                                        ' ucreate.it, mohali, India ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
