import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdsDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdsDetialScreenState();
}

class _AdsDetialScreenState extends State<AdsDetailScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //  var obj =  ModalRoute.of(context).settings.arguments;
    String name = ModalRoute.of(context).settings.arguments;
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget carousel = Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/products/furniture.jpeg'),
        AssetImage('assets/images/products/cycle.jpeg'),
        AssetImage('assets/images/products/furniture.jpeg'),
        AssetImage('assets/images/products/cycle.jpeg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 2),
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  FontAwesomeIcons.share,
                  size: 25,
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            expandedHeight: height / 3,
            flexibleSpace: FlexibleSpaceBar(
              background: carousel,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: opacity1,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                EdgeInsets.only(top: 32.0, left: 18, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '\$31.99  ',
                                          style: TextStyle(
                                            color: AppColors.GreenDark,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      TextSpan(
                                        text: '\$80.99',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        '25 May ',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: 0.27,
                                          color: AppColors.BlueDark,
                                        ),
                                      ),
                                      Icon(
                                        FontAwesomeIcons.calendarDay,
                                        color: AppColors.BlueDark,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10.0, left: 18, right: 16),
                            child: Text(
                              name,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                letterSpacing: 0.27,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 3.0, left: 18, right: 16, bottom: 20.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.mapMarkerAlt,
                                  size: 12,
                                ),
                                Text(
                                  ' ucreate.it, mohali, India ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: opacity2,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Divider(
                              color: Colors.black12,
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, right: 16, bottom: 20),
                              child: Text(
                                'Posted By',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  letterSpacing: 0.27,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Lorem ipsum is simply dummy text of printing &  typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry. ',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                letterSpacing: 0.27,
                                color: Colors.black,
                              ),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: opacity2,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Divider(
                              color: Colors.black12,
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, right: 16, bottom: 20),
                              child: Text(
                                'Description',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  letterSpacing: 0.27,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Lorem ipsum is simply dummy text of printing &  typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry. \n \nLorem ipsum is simply dummy text of printing &  typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                letterSpacing: 0.27,
                                color: Colors.black,
                              ),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: opacity3,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Divider(
                              color: Colors.black12,
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, right: 16, bottom: 20),
                              child: Text(
                                'Location',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  letterSpacing: 0.27,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              height: height / 4,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/map.jpg')),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: opacity3,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.RedDark, width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: AppColors.Red, blurRadius: 10.0)
                        ]),
                    child: Icon(
                      FontAwesomeIcons.heartbeat,
                      color: AppColors.RedDark,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.BlueDark,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: AppColors.BlueDark.withOpacity(0.5),
                            offset: const Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'CHAT NOW!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: 0.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
