import 'package:BuyAndSell/routes.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
    AccountScreen({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InkWell(
          onTap: ()=> Navigator.of(context).pushNamed(Routes.help),
          child: Text("AccountScreen")),
      ),
    );
  }
}