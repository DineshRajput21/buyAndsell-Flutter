import 'package:flutter/material.dart';

class FreshAds extends StatelessWidget {
  List<Map<String, dynamic>> addsArray = [
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
    {
      'icon': 'assets/images/recommendImages/cycle.jpeg',
      'name': 'Bikes',
    },
    {
      'icon': 'assets/images/recommendImages/furniture.jpeg',
      'name': 'Cars',
    },
  ];
  Widget gridItem(context, tile) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Card(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset(
                tile['icon'],
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: width / 2.2,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(tile['name'],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      Padding(padding: EdgeInsets.only(top: 5.0)),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: '\$3.99  ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )),
                            TextSpan(
                              text: '\$8.99',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(15, 25, 15, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom:10),
            child: Text(
              'Fresh Items',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children:
                  addsArray.map((Item) => gridItem(context, Item)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
