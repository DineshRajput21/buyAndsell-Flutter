import 'package:BuyAndSell/screens/tabScreens/account/Account.dart';
import 'package:BuyAndSell/screens/tabScreens/chat/Chat.dart';
import 'package:BuyAndSell/screens/tabScreens/explore/Explore.dart';
import 'package:BuyAndSell/screens/tabScreens/myAds/MyAds.dart';
import 'package:BuyAndSell/screens/tabScreens/sell/Sell.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> pages = [
    ExploreScreen(
      key: PageStorageKey('Page1'),
    ),
    ChatScreen(
      key: PageStorageKey('Page2'),
    ),
    SellScreen(
      key: PageStorageKey('Page3'),
    ),
    MyAdsScreen(key: PageStorageKey('page5')),
    AccountScreen(
      key: PageStorageKey('Page4'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true, // use this to remove appBar's elevation
        curve: Curves.ease,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
          // _pageController.animateToPage(index,
          // duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.compass),
            title: Text('EXPLORE'),
            activeColor: AppColors.RedDark,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
              textAlign: TextAlign.center,
              icon: Icon(FontAwesomeIcons.comments),
              title: Text('CHATS'),
              activeColor: AppColors.BlueDark),
          BottomNavyBarItem(
              textAlign: TextAlign.center,
              icon: Icon(FontAwesomeIcons.cameraRetro),
              title: Text('SELL'),
              activeColor: AppColors.GreenDark),
          BottomNavyBarItem(
              textAlign: TextAlign.center,
              icon: Icon(FontAwesomeIcons.images),
              title: Text('MY ADS'),
              activeColor: AppColors.YellowDark),
          BottomNavyBarItem(
              textAlign: TextAlign.center,
              icon: Icon(FontAwesomeIcons.userCircle),
              title: Text('ACCOUNT'),
              activeColor: AppColors.BlueDark),
        ],
      ),
      body: PageStorage(
        child: pages[currentIndex],
        bucket: bucket,
      ),
    );
  }
}
