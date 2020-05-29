import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:BuyAndSell/widgets/AdsItem/AdsItem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FreshAds extends StatelessWidget {
  final String isMyAdsScreen;
  FreshAds({this.isMyAdsScreen});

  List<Map<String, dynamic>> addsArray = [
    {
      'icon': 'assets/images/products/cycle.jpeg',
      'name': 'Brand new cycle!',
      'loc': 'ucreate, mohali, India',
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
    {
      'icon': 'assets/images/products/coffeMaker.jpg',
      'name': 'Coffee maker',
      'loc': 'shimla, himachal',
    },
    {
      'icon': 'assets/images/products/cycle.jpeg',
      'name': 'Bikes',
      'loc': 'ucreate, mohali, India',
    },
    {
      'icon': 'assets/images/products/furniture.jpeg',
      'name': 'Cars',
      'loc': 'ucreate, mohali, India',
    },
    {
      'icon': 'assets/images/products/coffeMaker.jpg',
      'name': 'Bikes',
      'loc': 'ucreate, mohali, India',
    },
    {
      'icon': 'assets/images/products/cricket.jpg',
      'name': 'Cars',
      'loc': 'ucreate, mohali, India',
    },
    {
      'icon': 'assets/images/products/cycle.jpeg',
      'name': 'Bikes',
      'loc': 'ucreate, mohali, India',
    },
    {
      'icon': 'assets/images/products/furniture.jpeg',
      'name': 'Cars',
      'loc': 'ucreate, mohali, India',
    },
  ];
  Widget gridItem(context, tile) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return MaterialButton(
      elevation: 5.0,
      highlightElevation: 5.0,
      onPressed: () => Navigator.of(context)
          .pushNamed(Routes.adsDetails, arguments: tile['name']),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      textColor: Colors.black54,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: height / 9.4,
            margin: EdgeInsets.only(top: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(tile['icon']))),
          ),
          Padding(padding: EdgeInsets.only(top: 12)),
          Column(
            children: <Widget>[
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: '\$3.99  ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                      text: '\$8.99',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 3.0)),
              Text(tile['name'],
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              Padding(padding: EdgeInsets.only(top: 3.0)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    size: 10,
                  ),
                  Text(
                    tile['loc'],
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.LightGrey,
      ),
      padding: EdgeInsets.fromLTRB(15, 25, 15, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              crossAxisCount: 2,
              padding: EdgeInsets.only(bottom: 20),
              children:
                  addsArray.map((Item) => gridItem(context, Item)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
