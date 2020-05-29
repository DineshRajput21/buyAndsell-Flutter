import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/FreshAds.dart';
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
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                      ),
                    ),
                    floating: true,
                    pinned: true,
                    snap: true,
                    primary: true,
                    forceElevated: innerBoxIsScrolled,
                    bottom: TabBar(
                        unselectedLabelColor: AppColors.GreenDark,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: AppColors.GreenDark,
                        tabs: [
                          Tab(
                            child: Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "ADS",
                                  style: TextStyle(color: Colors.black, fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "FAVOURITE",
                                  style: TextStyle(color: Colors.black, fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      FreshAds(),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      FreshAds(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
