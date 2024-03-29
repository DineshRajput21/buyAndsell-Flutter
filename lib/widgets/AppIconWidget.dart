  
import 'package:flutter/material.dart';

class AppIconWidget extends StatelessWidget {
  final image;
  const AppIconWidget({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double imageSize;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      imageSize = (size.width * 0.40);
    } else {
      imageSize = (size.height * 0.40);
    }
    return Image.asset(
      image,
      height: imageSize,
    );
  }
}