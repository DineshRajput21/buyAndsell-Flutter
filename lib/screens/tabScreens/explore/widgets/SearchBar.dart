import 'package:BuyAndSell/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: width / 1.2,
            height: (height / 3) / 6,
            child: TextField(
              onChanged: (value) {},
              // controller: editingController,
              decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(FontAwesomeIcons.searchengin),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)))),
            ),
          ),
          Container(
            child: Icon(FontAwesomeIcons.bell),
          )
        ],
      ),
    );
  }
}
