import 'package:flutter/material.dart';

class SellScreen extends StatefulWidget {
  SellScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Sell"),
      ),
    );
  }
}