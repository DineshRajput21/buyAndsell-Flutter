import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/FreshAds.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FreshAdsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FreshStateAdsState();
}

class _FreshStateAdsState extends State<FreshAdsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              'Fresh Ads',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.transparent,
            // expandedHeight: 100,
            // flexibleSpace: FlexibleSpaceBar(
            //   background: Text("Fresh Ads", style: TextStyle(
            //     fontSize: 18,
            //   ),),
            // ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                FreshAds(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
