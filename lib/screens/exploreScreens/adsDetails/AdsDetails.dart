import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/FreshAds.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/PopularAds.dart';
import 'package:flutter/material.dart';

class AdsDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdsDetialScreenState();
}

class _AdsDetialScreenState extends State<AdsDetailScreen> {
  @override
  Widget build(BuildContext context) {
  //  var obj =  ModalRoute.of(context).settings.arguments;
   String name =ModalRoute.of(context).settings.arguments;

  var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            backgroundColor: AppColors.GreenDark,
            expandedHeight: height/3.5,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  'assets/images/recommendImages/cycle.jpeg',
                  fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // PopularAds(),
                // FreshAds(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
