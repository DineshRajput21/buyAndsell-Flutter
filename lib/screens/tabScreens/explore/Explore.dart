import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:BuyAndSell/screens/tabScreens/Explore/widgets/CategoriesSwiper.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/FreshAds.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/LocationBar.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/PopularAds.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/widgets/SearchBar.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 20),
            child: Container(
              decoration: BoxDecoration(color: AppColors.LightGrey),
              child: Column(
                children: <Widget>[
                  LocationBar(),
                  SearchBar(),
                  CategorySwiper(),
                  PopularAds(),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Fresh Items',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.of(context).pushNamed(Routes.freshAds),
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  FreshAds(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
