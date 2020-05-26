import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:flutter/material.dart';
import './Colors.dart' as myColors;

class SendedMessageWidget extends StatelessWidget {
  final String content;
  final String time;
  const SendedMessageWidget({
    Key key,
    this.content,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            right: 10.0, left: 50.0, top: 5.0, bottom: 5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)),
          child: Container(
            color: AppColors.BlueDark,
            // margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Stack(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    right: 12.0, left: 23.0, top: 8.0, bottom: 25.0),
                child: Text(
                  content,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 4,
                left: 15,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    time,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
