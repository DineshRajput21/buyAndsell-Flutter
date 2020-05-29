import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flip_panel/flip_panel.dart';

class PopularAds extends StatelessWidget {
  final List<Map<String, dynamic>> addsArray = [
    {
      'icon': 'assets/images/products/cycle.jpeg',
      'name': 'Brand new cycle!',
      'loc': 'ucreate, mohali, India',
    },
    {
      'icon': 'assets/images/products/coffeMaker.jpg',
      'name': 'Coffee maker',
      'loc': 'shimla, himachal Pradesh',
    },
    {
      'icon': 'assets/images/products/cricket.jpg',
      'name': 'MRF Cricket bat ',
      'loc': 'sector 11, chandigarh',
    },
    {
      'icon': 'assets/images/products/furniture.jpeg',
      'name': '2 seater brown sofa',
      'loc': 'kharar, mohali, punjab',
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                            ),
                          ],
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
                            elevation: 5.0,
                            child: Container(
                              width: width / 2,
                              height: width / 4.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)
                              ),
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
                                      Padding(padding: EdgeInsets.only(left:3)),
                                      Text(
                                        addsArray[index]['loc'],
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
