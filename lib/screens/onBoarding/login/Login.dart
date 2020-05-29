import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:BuyAndSell/routes.dart';
import 'package:BuyAndSell/screens/onBoarding/login/DelayedAnimation.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return Scaffold(
      backgroundColor: AppColors.Blue,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AvatarGlow(
                endRadius: 120,
                duration: Duration(seconds: 2),
                glowColor: Colors.white70,
                repeat: true,
                repeatPauseDuration: Duration(seconds: 0),
                startDelay: Duration(seconds: 1),
                child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      backgroundImage: AssetImage('assets/icons/app_icon.png'),
                      radius: 70.0,
                    )),
              ),
              DelayedAnimation(
                child: Text(
                  "Welcome To",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: color),
                ),
                delay: delayedAmount + 500,
              ),
              DelayedAnimation(
                child: Text(
                  "Buy & Sell",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: color),
                ),
                delay: delayedAmount + 1000,
              ),
              SizedBox(
                height: 30.0,
              ),
              DelayedAnimation(
                child: Text(
                  "When It's Gone,",
                  style: TextStyle(fontSize: 20.0, color: color),
                ),
                delay: delayedAmount + 1500,
              ),
              DelayedAnimation(
                child: Text(
                  "It's Gone for Good!",
                  style: TextStyle(fontSize: 20.0, color: color),
                ),
                delay: delayedAmount + 2000,
              ),
              SizedBox(
                height: 60.0,
              ),
              DelayedAnimation(
                child: GestureDetector(
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  child: Transform.scale(
                    scale: _scale,
                    child: _animatedButtonUI(true),
                  ),
                ),
                delay: delayedAmount + 2500,
              ),
              SizedBox(
                height: 20.0,
              ),
              DelayedAnimation(
                child: GestureDetector(
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  child: Transform.scale(
                    scale: _scale,
                    child: _animatedButtonUI(false),
                  ),
                ),
                delay: delayedAmount + 3000,
              ),
              SizedBox(
                height: 30.0,
              ),
              DelayedAnimation(
                child: MaterialButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed(Routes.tabs),
                  child: Text(
                    "Skip for now!",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                ),
                delay: delayedAmount + 3500,
              ),
            ],
          ),
        ),
      ),
      //  Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
      //     SizedBox(
      //       height: 20.0,
      //     ),
      //      Center(

      //   ),
      //   ],

      // ),
    );
  }

  Widget _animatedButtonUI(isGoogle) => Container(
        height: 60,
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.white,
        ),
        child: MaterialButton(
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed(Routes.tabs),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  isGoogle
                      ? FontAwesomeIcons.google
                      : FontAwesomeIcons.facebookF,
                  color: isGoogle ? AppColors.RedDark : AppColors.BlueDark,
                ),
                Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                Text(
                  isGoogle ? 'Continue with google' : 'Continue with facebook',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: isGoogle ? AppColors.RedDark : AppColors.BlueDark,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
