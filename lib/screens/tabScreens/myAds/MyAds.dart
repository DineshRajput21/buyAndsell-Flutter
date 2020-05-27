import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:flutter/material.dart';

class MyAdsScreen extends StatefulWidget {
  MyAdsScreen({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverSafeArea(
                  top: false,
                  sliver: SliverAppBar(
                    backgroundColor: Colors.white,
                    centerTitle: true,
                    title: Text(
                      'MY ADS',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    floating: true,
                    pinned: true,
                    snap: true,
                    primary: true,
                    forceElevated: innerBoxIsScrolled,
                    bottom: TabBar(
                      indicatorColor: AppColors.RedDark,
                      // isScrollable: true,
                      tabs: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'ADS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'FAVOURITES',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Text('No data'),
                Text('No data'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
