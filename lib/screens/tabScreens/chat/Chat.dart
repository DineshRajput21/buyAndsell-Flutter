import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:flutter/material.dart';
import './widgets/Colors.dart' as myColors;
import './Widgets/ChatListViewItem.dart';
import './widgets/Loading.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);
  @override
  _ChatListPageViewState createState() => _ChatListPageViewState();
}

class _ChatListPageViewState extends State<ChatScreen> {
  bool isLoading = false;

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
                      'CHATS',
                      style: TextStyle(
                        color: Colors.black,
                         fontSize: 18,
                         fontWeight: FontWeight.bold
                      ),
                    ),
                    floating: true,
                    pinned: true,
                    snap: true,
                    primary: true,
                    forceElevated: innerBoxIsScrolled,
                    bottom:  TabBar(
                        unselectedLabelColor: AppColors.BlueDark,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: AppColors.BlueDark,
                        tabs: [
                          Tab(
                            child: Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("SELLING", 
                                style: TextStyle(color: Colors.black, fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("BUYING", 
                                style: TextStyle(color: Colors.black, fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      )),
                  child: ListView(
                    children: <Widget>[
                      ChatListViewItem(
                        hasUnreadMessage: true,
                        image: AssetImage('assets/images/person1.jpg'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Jaspinder Singh",
                        newMesssageCount: 8,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: true,
                        image: AssetImage('assets/images/person2.png'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Ajay Kumar",
                        newMesssageCount: 5,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: false,
                        image: AssetImage('assets/images/person3.jpg'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Pawel",
                        newMesssageCount: 0,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: true,
                        image: AssetImage('assets/images/person4.png'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "JD Singh",
                        newMesssageCount: 11,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: false,
                        image: AssetImage('assets/images/person5.jpg'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Gurpreet Singh",
                        newMesssageCount: 0,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: false,
                        image: AssetImage('assets/images/person6.jpg'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Jacek",
                        newMesssageCount: 0,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: false,
                        image: AssetImage('assets/images/person7.jpg'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Gaurav ",
                        newMesssageCount: 0,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: false,
                        image: AssetImage('assets/images/person1.jpg'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Pintu Kumar",
                        newMesssageCount: 0,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: false,
                        image: AssetImage('assets/images/person2.png'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Alex",
                        newMesssageCount: 0,
                        time: "19:27 PM",
                      ),
                      ChatListViewItem(
                        hasUnreadMessage: false,
                        image: AssetImage('assets/images/person3.jpg'),
                        lastMessage:
                            "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                        name: "Rahul",
                        newMesssageCount: 0,
                        time: "19:27 PM",
                      ),
                    ],
                  ),
                ),
                Text('No data')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
